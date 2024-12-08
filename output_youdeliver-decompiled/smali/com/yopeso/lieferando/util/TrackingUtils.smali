.class public Lcom/yopeso/lieferando/util/TrackingUtils;
.super Ljava/lang/Object;
.source "TrackingUtils.java"


# static fields
.field private static final INACTIVITY_TIME:J = 0xbb8L

.field private static cuisineFilter:Ljava/lang/String;

.field public static enableKahuna:Z

.field private static hasOrdered:Z

.field private static searchCategory:Ljava/lang/String;

.field private static searchCategoryTimer:Ljava/util/Timer;

.field private static searchFilter:Ljava/lang/String;

.field private static searchFilterTimer:Ljava/util/Timer;

.field private static searchProduct:Ljava/lang/String;

.field private static searchProductTimer:Ljava/util/Timer;

.field private static sortSelected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 67
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/yopeso/lieferando/net/config/IConfig;->isTakeaway()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/yopeso/lieferando/util/TrackingUtils;->enableKahuna:Z

    .line 70
    sput-boolean v1, Lcom/yopeso/lieferando/util/TrackingUtils;->hasOrdered:Z

    .line 73
    const-string v0, ""

    sput-object v0, Lcom/yopeso/lieferando/util/TrackingUtils;->searchFilter:Ljava/lang/String;

    .line 77
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/yopeso/lieferando/util/TrackingUtils;->searchFilterTimer:Ljava/util/Timer;

    .line 80
    sput-object v2, Lcom/yopeso/lieferando/util/TrackingUtils;->searchCategory:Ljava/lang/String;

    .line 81
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/yopeso/lieferando/util/TrackingUtils;->searchCategoryTimer:Ljava/util/Timer;

    .line 84
    sput-object v2, Lcom/yopeso/lieferando/util/TrackingUtils;->searchProduct:Ljava/lang/String;

    .line 85
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/yopeso/lieferando/util/TrackingUtils;->searchProductTimer:Ljava/util/Timer;

    .line 88
    sput-object v2, Lcom/yopeso/lieferando/util/TrackingUtils;->cuisineFilter:Ljava/lang/String;

    .line 90
    sput-boolean v1, Lcom/yopeso/lieferando/util/TrackingUtils;->sortSelected:Z

    return-void

    :cond_0
    move v0, v1

    .line 67
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/yopeso/lieferando/util/TrackingUtils;->searchFilter:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/yopeso/lieferando/util/TrackingUtils;->searchCategory:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/yopeso/lieferando/util/TrackingUtils;->searchProduct:Ljava/lang/String;

    return-object v0
.end method

.method public static addNewAccountAdjust()V
    .locals 2

    .prologue
    .line 1025
    const/4 v0, 0x0

    .line 1026
    .local v0, "event":Lcom/adjust/sdk/AdjustEvent;
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1027
    new-instance v0, Lcom/adjust/sdk/AdjustEvent;

    .end local v0    # "event":Lcom/adjust/sdk/AdjustEvent;
    const-string v1, "c0zmfh"

    invoke-direct {v0, v1}, Lcom/adjust/sdk/AdjustEvent;-><init>(Ljava/lang/String;)V

    .line 1028
    .restart local v0    # "event":Lcom/adjust/sdk/AdjustEvent;
    invoke-static {v0}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V

    .line 1043
    :cond_0
    :goto_0
    return-void

    .line 1030
    :cond_1
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isTakeaway()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1033
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1037
    new-instance v0, Lcom/adjust/sdk/AdjustEvent;

    .end local v0    # "event":Lcom/adjust/sdk/AdjustEvent;
    const-string v1, "tfw4kt"

    invoke-direct {v0, v1}, Lcom/adjust/sdk/AdjustEvent;-><init>(Ljava/lang/String;)V

    .line 1038
    .restart local v0    # "event":Lcom/adjust/sdk/AdjustEvent;
    invoke-static {v0}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V

    goto :goto_0
.end method

.method public static appVersionKahuna(Ljava/lang/String;)V
    .locals 2
    .param p0, "app_version"    # Ljava/lang/String;

    .prologue
    .line 1522
    sget-boolean v1, Lcom/yopeso/lieferando/util/TrackingUtils;->enableKahuna:Z

    if-eqz v1, :cond_0

    .line 1523
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1524
    .local v0, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "app_version"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1525
    invoke-static {v0}, Lcom/kahuna/sdk/KahunaAnalytics;->setUserAttributes(Ljava/util/Map;)V

    .line 1527
    .end local v0    # "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method public static checkOutKahuna(Lcom/yopeso/lieferando/model/cart/ShoppingCart;)V
    .locals 4
    .param p0, "cart"    # Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    .prologue
    .line 1437
    sget-boolean v1, Lcom/yopeso/lieferando/util/TrackingUtils;->enableKahuna:Z

    if-eqz v1, :cond_1

    .line 1438
    const-string v1, "check_out"

    invoke-virtual {p0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1439
    invoke-virtual {p0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getOrderCostReached()I

    move-result v3

    .line 1438
    invoke-static {v1, v2, v3}, Lcom/kahuna/sdk/KahunaAnalytics;->trackEvent(Ljava/lang/String;II)V

    .line 1440
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1442
    .local v0, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "last_item_ordered_id"

    .line 1443
    invoke-virtual {p0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getItem(I)Lcom/yopeso/lieferando/model/cart/CartItem;

    move-result-object v2

    .line 1444
    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/cart/CartItem;->getMeal()Lcom/yopeso/lieferando/model/meal/Meal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/meal/Meal;->getId()J

    move-result-wide v2

    .line 1443
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 1441
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1445
    const-string v1, "last_item_ordered_name"

    .line 1446
    invoke-virtual {p0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getItem(I)Lcom/yopeso/lieferando/model/cart/CartItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/cart/CartItem;->getMeal()Lcom/yopeso/lieferando/model/meal/Meal;

    move-result-object v2

    .line 1447
    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/meal/Meal;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1445
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1448
    const-string v1, "date_of_last_order"

    .line 1449
    sget-object v2, Lcom/yopeso/lieferando/LieferandoApplication;->sCurrentDate:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1448
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1450
    const-string v1, "last_order_restaurant_id"

    .line 1451
    invoke-virtual {p0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 1450
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1452
    const-string v1, "last_order_restaurant_name"

    invoke-virtual {p0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v2

    .line 1453
    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1452
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1454
    const-string v1, "last_payment_type"

    invoke-virtual {p0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getPaymentType()Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1456
    invoke-virtual {p0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->isVoucherUsed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1457
    const-string v1, "last_order_redemption_type"

    const-string v2, "voucher"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1463
    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/kahuna/sdk/KahunaAnalytics;->setUserAttributes(Ljava/util/Map;)V

    .line 1464
    const/4 v1, 0x1

    sput-boolean v1, Lcom/yopeso/lieferando/util/TrackingUtils;->hasOrdered:Z

    .line 1466
    .end local v0    # "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    return-void

    .line 1458
    .restart local v0    # "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    invoke-virtual {p0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->isStampleUsed()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1459
    const-string v1, "last_order_redemption_type"

    const-string v2, "stampcard"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1460
    :cond_3
    invoke-virtual {p0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->isRebateUsed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1461
    const-string v1, "last_order_redemption_type"

    const-string v2, "rebate"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static deviceUDIDKahuna(Ljava/lang/String;)V
    .locals 2
    .param p0, "device_udid"    # Ljava/lang/String;

    .prologue
    .line 1557
    sget-boolean v1, Lcom/yopeso/lieferando/util/TrackingUtils;->enableKahuna:Z

    if-eqz v1, :cond_0

    .line 1558
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1559
    .local v0, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "device_udid"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1560
    invoke-static {v0}, Lcom/kahuna/sdk/KahunaAnalytics;->setUserAttributes(Ljava/util/Map;)V

    .line 1562
    .end local v0    # "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method public static facebookConnectedKahuna(Z)V
    .locals 3
    .param p0, "connected"    # Z

    .prologue
    .line 1315
    sget-boolean v1, Lcom/yopeso/lieferando/util/TrackingUtils;->enableKahuna:Z

    if-eqz v1, :cond_0

    .line 1316
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1317
    .local v0, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "facebook_connect"

    if-eqz p0, :cond_1

    const-string v1, "yes"

    :goto_0
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1318
    invoke-static {v0}, Lcom/kahuna/sdk/KahunaAnalytics;->setUserAttributes(Ljava/util/Map;)V

    .line 1320
    .end local v0    # "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void

    .line 1317
    .restart local v0    # "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    const-string v1, "no"

    goto :goto_0
.end method

.method public static filtersKahuna(Ljava/lang/String;)V
    .locals 4
    .param p0, "last_filter_type"    # Ljava/lang/String;

    .prologue
    .line 1511
    sget-boolean v1, Lcom/yopeso/lieferando/util/TrackingUtils;->enableKahuna:Z

    if-eqz v1, :cond_0

    .line 1512
    const-string v1, "filter"

    invoke-static {v1}, Lcom/kahuna/sdk/KahunaAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 1513
    const-class v1, Lcom/yopeso/lieferando/LieferandoApplication;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1514
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Kahuna filtersKahuna +:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1513
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1516
    .local v0, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "last_filter_type"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1517
    invoke-static {v0}, Lcom/kahuna/sdk/KahunaAnalytics;->setUserAttributes(Ljava/util/Map;)V

    .line 1519
    .end local v0    # "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method public static itemAddToCartKahuna(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "item_id"    # Ljava/lang/String;
    .param p1, "item_name"    # Ljava/lang/String;

    .prologue
    .line 1427
    sget-boolean v1, Lcom/yopeso/lieferando/util/TrackingUtils;->enableKahuna:Z

    if-eqz v1, :cond_0

    .line 1428
    const-string v1, "add_item_to_cart"

    invoke-static {v1}, Lcom/kahuna/sdk/KahunaAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 1429
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1430
    .local v0, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "last_item_added_to_cart_id"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1431
    const-string v1, "last_item_added_to_cart_name"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1432
    invoke-static {v0}, Lcom/kahuna/sdk/KahunaAnalytics;->setUserAttributes(Ljava/util/Map;)V

    .line 1434
    .end local v0    # "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method public static logoutKahuna()V
    .locals 1

    .prologue
    .line 1159
    sget-boolean v0, Lcom/yopeso/lieferando/util/TrackingUtils;->enableKahuna:Z

    if-eqz v0, :cond_0

    .line 1160
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->logout()V

    .line 1162
    :cond_0
    return-void
.end method

.method public static osVersionKahuna(Ljava/lang/String;)V
    .locals 2
    .param p0, "os_version"    # Ljava/lang/String;

    .prologue
    .line 1530
    sget-boolean v1, Lcom/yopeso/lieferando/util/TrackingUtils;->enableKahuna:Z

    if-eqz v1, :cond_0

    .line 1531
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1532
    .local v0, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "os_version"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1533
    invoke-static {v0}, Lcom/kahuna/sdk/KahunaAnalytics;->setUserAttributes(Ljava/util/Map;)V

    .line 1535
    .end local v0    # "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method public static pushEnabledKahuna(Ljava/lang/String;)V
    .locals 2
    .param p0, "push_enabled"    # Ljava/lang/String;

    .prologue
    .line 1548
    sget-boolean v1, Lcom/yopeso/lieferando/util/TrackingUtils;->enableKahuna:Z

    if-eqz v1, :cond_0

    .line 1549
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1551
    .local v0, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "push_enabled"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1552
    invoke-static {v0}, Lcom/kahuna/sdk/KahunaAnalytics;->setUserAttributes(Ljava/util/Map;)V

    .line 1554
    .end local v0    # "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method public static resetCathegory()V
    .locals 1

    .prologue
    .line 1006
    const/4 v0, 0x0

    sput-object v0, Lcom/yopeso/lieferando/util/TrackingUtils;->searchCategory:Ljava/lang/String;

    .line 1007
    return-void
.end method

.method public static resetFilters()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 999
    sput-object v0, Lcom/yopeso/lieferando/util/TrackingUtils;->searchFilter:Ljava/lang/String;

    .line 1000
    sput-object v0, Lcom/yopeso/lieferando/util/TrackingUtils;->searchCategory:Ljava/lang/String;

    .line 1001
    sput-object v0, Lcom/yopeso/lieferando/util/TrackingUtils;->searchProduct:Ljava/lang/String;

    .line 1002
    sput-object v0, Lcom/yopeso/lieferando/util/TrackingUtils;->cuisineFilter:Ljava/lang/String;

    .line 1003
    return-void
.end method

.method public static resetProduct()V
    .locals 1

    .prologue
    .line 1010
    const/4 v0, 0x0

    sput-object v0, Lcom/yopeso/lieferando/util/TrackingUtils;->searchProduct:Ljava/lang/String;

    .line 1011
    return-void
.end method

.method public static restaurantFavoritizedKahuna(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "restaurant_id"    # Ljava/lang/String;
    .param p1, "restaurant_name"    # Ljava/lang/String;

    .prologue
    .line 1410
    invoke-static {p0}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackSetFavoriteHeart(Ljava/lang/String;)V

    .line 1411
    sget-boolean v1, Lcom/yopeso/lieferando/util/TrackingUtils;->enableKahuna:Z

    if-eqz v1, :cond_0

    .line 1412
    const-string v1, "favorite_restaurant"

    invoke-static {v1}, Lcom/kahuna/sdk/KahunaAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 1413
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1414
    .local v0, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "last_restaurant_favorited_id"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1415
    const-string v1, "last_restaurant_favorited_name"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1416
    invoke-static {v0}, Lcom/kahuna/sdk/KahunaAnalytics;->setUserAttributes(Ljava/util/Map;)V

    .line 1418
    .end local v0    # "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method public static restaurantSelectedKahuna(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "restaurant_id"    # Ljava/lang/String;
    .param p1, "restaurant_name"    # Ljava/lang/String;

    .prologue
    .line 1324
    sget-boolean v1, Lcom/yopeso/lieferando/util/TrackingUtils;->enableKahuna:Z

    if-eqz v1, :cond_0

    .line 1325
    const-string v1, "select_restaurant"

    invoke-static {v1}, Lcom/kahuna/sdk/KahunaAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 1326
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1327
    .local v0, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "last_restaurant_selected_id"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1328
    const-string v1, "last_restaurant_selected_name"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1329
    invoke-static {v0}, Lcom/kahuna/sdk/KahunaAnalytics;->setUserAttributes(Ljava/util/Map;)V

    .line 1331
    .end local v0    # "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method public static searchKahuna(Ljava/lang/String;)V
    .locals 2
    .param p0, "last_search_query"    # Ljava/lang/String;

    .prologue
    .line 1469
    sget-boolean v1, Lcom/yopeso/lieferando/util/TrackingUtils;->enableKahuna:Z

    if-eqz v1, :cond_0

    .line 1470
    const-string v1, "search"

    invoke-static {v1}, Lcom/kahuna/sdk/KahunaAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 1471
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1472
    .local v0, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "last_search_query"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1473
    invoke-static {v0}, Lcom/kahuna/sdk/KahunaAnalytics;->setUserAttributes(Ljava/util/Map;)V

    .line 1475
    .end local v0    # "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method public static sessionNoOrderVersionKahuna(Ljava/lang/String;)V
    .locals 2
    .param p0, "number_sessions_started_no_order"    # Ljava/lang/String;

    .prologue
    .line 1539
    sget-boolean v1, Lcom/yopeso/lieferando/util/TrackingUtils;->enableKahuna:Z

    if-eqz v1, :cond_0

    .line 1540
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1541
    .local v0, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "number_sessions_started_no_order"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1543
    invoke-static {v0}, Lcom/kahuna/sdk/KahunaAnalytics;->setUserAttributes(Ljava/util/Map;)V

    .line 1545
    .end local v0    # "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method public static setKahuna()V
    .locals 3

    .prologue
    .line 1165
    const-class v0, Lcom/yopeso/lieferando/util/TrackingUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "setKahuna"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    sget-boolean v0, Lcom/yopeso/lieferando/util/TrackingUtils;->enableKahuna:Z

    if-eqz v0, :cond_0

    .line 1167
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1168
    const-class v0, Lcom/yopeso/lieferando/util/TrackingUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Kahuna setKahuna:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1169
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/UserData;->getFullName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1170
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/UserData;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1171
    const-class v2, Lcom/kahuna/sdk/KahunaAnalytics;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1168
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v0

    .line 1173
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/UserData;->getFullName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/UserData;->getEmail()Ljava/lang/String;

    move-result-object v1

    .line 1172
    invoke-static {v0, v1}, Lcom/kahuna/sdk/KahunaAnalytics;->setUsernameAndEmail(Ljava/lang/String;Ljava/lang/String;)V

    .line 1178
    :cond_0
    return-void
.end method

.method public static setUserAttributesKahuna()V
    .locals 5

    .prologue
    .line 1277
    sget-boolean v3, Lcom/yopeso/lieferando/util/TrackingUtils;->enableKahuna:Z

    if-eqz v3, :cond_1

    .line 1278
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1279
    .local v2, "userAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "first_name"

    .line 1280
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/user/UserData;->getPreName()Ljava/lang/String;

    move-result-object v4

    .line 1279
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1281
    const-string v3, "last_name"

    .line 1282
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/user/UserData;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1281
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1283
    const-string v3, "gender"

    .line 1284
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/user/UserData;->getGender()Ljava/lang/String;

    move-result-object v4

    .line 1283
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1285
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/user/UserData;->getBirthDay()Ljava/lang/String;

    move-result-object v1

    .line 1286
    .local v1, "birthday":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1287
    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1288
    .local v0, "bArrray":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v3, v0

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 1289
    const-string v3, "birth_day"

    .line 1290
    const/4 v4, 0x0

    aget-object v4, v0, v4

    .line 1289
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1292
    const-string v3, "birth_month"

    .line 1293
    const/4 v4, 0x1

    aget-object v4, v0, v4

    .line 1291
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1294
    const-string v3, "birth_year"

    .line 1295
    const/4 v4, 0x2

    aget-object v4, v0, v4

    .line 1294
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1298
    .end local v0    # "bArrray":[Ljava/lang/String;
    :cond_0
    invoke-static {v2}, Lcom/kahuna/sdk/KahunaAnalytics;->setUserAttributes(Ljava/util/Map;)V

    .line 1300
    :cond_1
    return-void
.end method

.method public static signUpKahuna(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "first_name"    # Ljava/lang/String;
    .param p1, "last_name"    # Ljava/lang/String;
    .param p2, "city"    # Ljava/lang/String;
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "zip"    # Ljava/lang/String;
    .param p5, "dob"    # Ljava/lang/String;
    .param p6, "gender"    # Ljava/lang/String;

    .prologue
    .line 1121
    sget-boolean v1, Lcom/yopeso/lieferando/util/TrackingUtils;->enableKahuna:Z

    if-eqz v1, :cond_0

    .line 1122
    const-string v1, "sign_up"

    invoke-static {v1}, Lcom/kahuna/sdk/KahunaAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 1123
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1124
    .local v0, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "first_name"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1125
    const-string v1, "last_name"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1126
    const-string v1, "city"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1127
    const-string v1, "address"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1128
    const-string v1, "zip_code"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1129
    const-string v1, "dob"

    invoke-interface {v0, v1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1130
    const-string v1, "gender"

    invoke-interface {v0, v1, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1131
    invoke-static {v0}, Lcom/kahuna/sdk/KahunaAnalytics;->setUserAttributes(Ljava/util/Map;)V

    .line 1133
    .end local v0    # "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method public static stampCollectedKahuna()V
    .locals 1

    .prologue
    .line 1421
    sget-boolean v0, Lcom/yopeso/lieferando/util/TrackingUtils;->enableKahuna:Z

    if-eqz v0, :cond_0

    .line 1422
    const-string v0, "collect_stamp_card"

    invoke-static {v0}, Lcom/kahuna/sdk/KahunaAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 1424
    :cond_0
    return-void
.end method

.method public static startAppKahuna(Landroid/content/Context;)V
    .locals 5
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 1231
    sget-boolean v2, Lcom/yopeso/lieferando/util/TrackingUtils;->enableKahuna:Z

    if-eqz v2, :cond_0

    .line 1232
    sput-boolean v3, Lcom/yopeso/lieferando/util/TrackingUtils;->hasOrdered:Z

    .line 1234
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/yopeso/lieferando/net/config/IConfig;->isLive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1236
    sget v2, Lcom/yopeso/lieferando/R$string;->kahuna_live:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1237
    sget v3, Lcom/yopeso/lieferando/R$string;->project_id_live:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1235
    invoke-static {p0, v2, v3}, Lcom/kahuna/sdk/KahunaAnalytics;->onAppCreate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1238
    const-class v2, Lcom/yopeso/lieferando/LieferandoApplication;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1239
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Kahuna startAppKahuna +:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1240
    sget v4, Lcom/yopeso/lieferando/R$string;->kahuna_stage:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1241
    sget v4, Lcom/yopeso/lieferando/R$string;->project_id_live:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1239
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1238
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    :goto_0
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->disableKahunaGenerateNotifications()V

    .line 1254
    const-class v2, Lcom/yopeso/lieferando/net/push/KahunaPushReceiver;

    invoke-static {v2}, Lcom/kahuna/sdk/KahunaAnalytics;->setPushReceiver(Ljava/lang/Class;)V

    .line 1260
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1261
    .local v1, "pInfo":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v2}, Lcom/yopeso/lieferando/util/TrackingUtils;->appVersionKahuna(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1269
    .end local v1    # "pInfo":Landroid/content/pm/PackageInfo;
    :goto_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/yopeso/lieferando/util/TrackingUtils;->osVersionKahuna(Ljava/lang/String;)V

    .line 1271
    invoke-static {p0}, Lcom/yopeso/lieferando/util/DeviceUtils;->getUuidForDevice(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/yopeso/lieferando/util/TrackingUtils;->deviceUDIDKahuna(Ljava/lang/String;)V

    .line 1274
    return-void

    .line 1244
    :cond_1
    sget v2, Lcom/yopeso/lieferando/R$string;->kahuna_stage:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1245
    sget v3, Lcom/yopeso/lieferando/R$string;->project_id_stage:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1243
    invoke-static {p0, v2, v3}, Lcom/kahuna/sdk/KahunaAnalytics;->onAppCreate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1246
    const-class v2, Lcom/yopeso/lieferando/LieferandoApplication;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1247
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Kahuna startAppKahuna +:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1248
    sget v4, Lcom/yopeso/lieferando/R$string;->kahuna_stage:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1249
    sget v4, Lcom/yopeso/lieferando/R$string;->project_id_stage:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1247
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1246
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1263
    :catch_0
    move-exception v0

    .line 1264
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method public static startKahuna()V
    .locals 3

    .prologue
    .line 1137
    sget-boolean v0, Lcom/yopeso/lieferando/util/TrackingUtils;->enableKahuna:Z

    if-eqz v0, :cond_0

    .line 1138
    const-class v0, Lcom/yopeso/lieferando/util/TrackingUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Kahuna startKahuna:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1139
    sget-boolean v2, Lcom/yopeso/lieferando/util/TrackingUtils;->enableKahuna:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/kahuna/sdk/KahunaAnalytics;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1138
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->start()V

    .line 1142
    :cond_0
    return-void
.end method

.method public static stopKahuna()V
    .locals 3

    .prologue
    .line 1146
    sget-boolean v0, Lcom/yopeso/lieferando/util/TrackingUtils;->enableKahuna:Z

    if-eqz v0, :cond_1

    .line 1147
    const-class v0, Lcom/yopeso/lieferando/util/TrackingUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Kahuna stopKahuna:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1148
    sget-boolean v2, Lcom/yopeso/lieferando/util/TrackingUtils;->enableKahuna:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/kahuna/sdk/KahunaAnalytics;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1147
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    invoke-static {}, Lcom/kahuna/sdk/KahunaAnalytics;->stop()V

    .line 1151
    sget-boolean v0, Lcom/yopeso/lieferando/util/TrackingUtils;->hasOrdered:Z

    if-nez v0, :cond_0

    .line 1152
    const-string v0, "1"

    invoke-static {v0}, Lcom/yopeso/lieferando/util/TrackingUtils;->sessionNoOrderVersionKahuna(Ljava/lang/String;)V

    .line 1154
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/yopeso/lieferando/util/TrackingUtils;->hasOrdered:Z

    .line 1156
    :cond_1
    return-void
.end method

.method public static trackActivityStart()V
    .locals 0

    .prologue
    .line 1110
    invoke-static {}, Lcom/yopeso/lieferando/util/TrackingUtils;->startKahuna()V

    .line 1111
    return-void
.end method

.method public static trackActivityStop()V
    .locals 0

    .prologue
    .line 1114
    invoke-static {}, Lcom/yopeso/lieferando/util/TrackingUtils;->stopKahuna()V

    .line 1115
    return-void
.end method

.method public static trackAddAddress(Landroid/content/Context;)V
    .locals 3
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 443
    :try_start_0
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 449
    new-instance v1, Lcom/adjust/sdk/AdjustEvent;

    .line 450
    const-string v2, "follco"

    .line 449
    invoke-direct {v1, v2}, Lcom/adjust/sdk/AdjustEvent;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V

    .line 467
    :cond_0
    :goto_0
    return-void

    .line 452
    :cond_1
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isTakeaway()Z

    move-result v1

    if-nez v1, :cond_0

    .line 455
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 456
    new-instance v1, Lcom/adjust/sdk/AdjustEvent;

    .line 457
    const-string v2, "ym7ska"

    .line 456
    invoke-direct {v1, v2}, Lcom/adjust/sdk/AdjustEvent;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 464
    :catch_0
    move-exception v0

    .line 465
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 460
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    new-instance v1, Lcom/adjust/sdk/AdjustEvent;

    const-string v2, "k9ujga"

    invoke-direct {v1, v2}, Lcom/adjust/sdk/AdjustEvent;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static trackAddToCartItem(JLandroid/content/Context;)V
    .locals 6
    .param p0, "mealID"    # J
    .param p2, "c"    # Landroid/content/Context;

    .prologue
    .line 572
    const/4 v1, 0x0

    .line 573
    .local v1, "event":Lcom/adjust/sdk/AdjustEvent;
    :try_start_0
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v3

    invoke-interface {v3}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 574
    new-instance v2, Lcom/adjust/sdk/AdjustEvent;

    const-string v3, "6fbvcx"

    invoke-direct {v2, v3}, Lcom/adjust/sdk/AdjustEvent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 575
    .end local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    .local v2, "event":Lcom/adjust/sdk/AdjustEvent;
    :try_start_1
    const-string v3, "actionValue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/adjust/sdk/AdjustEvent;->addCallbackParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    invoke-static {v2}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 606
    .end local v2    # "event":Lcom/adjust/sdk/AdjustEvent;
    :goto_0
    return-void

    .line 578
    .restart local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    :cond_0
    :try_start_2
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v3

    invoke-interface {v3}, Lcom/yopeso/lieferando/net/config/IConfig;->isTakeaway()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 579
    new-instance v3, Lcom/adjust/sdk/AdjustEvent;

    .line 580
    const-string v4, "5ar39a"

    .line 579
    invoke-direct {v3, v4}, Lcom/adjust/sdk/AdjustEvent;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 602
    :catch_0
    move-exception v0

    .line 603
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 583
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_3
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v3

    invoke-interface {v3}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 589
    new-instance v3, Lcom/adjust/sdk/AdjustEvent;

    .line 590
    const-string v4, "6gsux3"

    .line 589
    invoke-direct {v3, v4}, Lcom/adjust/sdk/AdjustEvent;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V

    goto :goto_0

    .line 593
    :cond_2
    new-instance v2, Lcom/adjust/sdk/AdjustEvent;

    const-string v3, "k1leb0"

    invoke-direct {v2, v3}, Lcom/adjust/sdk/AdjustEvent;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 594
    .end local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    .restart local v2    # "event":Lcom/adjust/sdk/AdjustEvent;
    :try_start_4
    const-string v3, "actionValue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/adjust/sdk/AdjustEvent;->addCallbackParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    invoke-static {v2}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 602
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "event":Lcom/adjust/sdk/AdjustEvent;
    .restart local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    goto :goto_1
.end method

.method public static trackAdjustKahuna()V
    .locals 1

    .prologue
    .line 1181
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    .line 1227
    return-void
.end method

.method public static trackBackNavi()V
    .locals 4

    .prologue
    .line 373
    :try_start_0
    const-class v2, Lcom/yopeso/lieferando/util/TrackingUtils;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "trackBackNavi: ivur5m"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    const/4 v1, 0x0

    .line 376
    .local v1, "event":Lcom/adjust/sdk/AdjustEvent;
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 377
    new-instance v1, Lcom/adjust/sdk/AdjustEvent;

    .end local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    const-string v2, "842e2v"

    invoke-direct {v1, v2}, Lcom/adjust/sdk/AdjustEvent;-><init>(Ljava/lang/String;)V

    .line 378
    .restart local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    invoke-static {v1}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V

    .line 403
    :cond_0
    :goto_0
    return-void

    .line 380
    :cond_1
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/yopeso/lieferando/net/config/IConfig;->isTakeaway()Z

    move-result v2

    if-nez v2, :cond_0

    .line 385
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v2

    if-nez v2, :cond_0

    .line 395
    new-instance v1, Lcom/adjust/sdk/AdjustEvent;

    .end local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    const-string v2, "ivur5m"

    invoke-direct {v1, v2}, Lcom/adjust/sdk/AdjustEvent;-><init>(Ljava/lang/String;)V

    .line 396
    .restart local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    invoke-static {v1}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 400
    :catch_0
    move-exception v0

    .line 401
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static trackCheckout(Landroid/content/Context;)V
    .locals 4
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 94
    :try_start_0
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    const-string v1, "checkout"

    invoke-static {v1}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackView(Ljava/lang/String;)V

    .line 129
    :goto_0
    return-void

    .line 98
    :cond_0
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isTakeaway()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 99
    new-instance v1, Lcom/adjust/sdk/AdjustEvent;

    const-string v2, "1fvzdh"

    invoke-direct {v1, v2}, Lcom/adjust/sdk/AdjustEvent;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 102
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 109
    new-instance v1, Lcom/adjust/sdk/AdjustEvent;

    .line 110
    const-string v2, "u9k2tn"

    .line 109
    invoke-direct {v1, v2}, Lcom/adjust/sdk/AdjustEvent;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V

    .line 111
    const-class v1, Lcom/yopeso/lieferando/util/TrackingUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 112
    const-string v2, "trackCheckout isCallaPizza"

    .line 111
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 117
    :cond_2
    const-string v1, "checkout"

    invoke-static {v1}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackView(Ljava/lang/String;)V

    .line 119
    const-class v1, Lcom/yopeso/lieferando/util/TrackingUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "trackCheckout"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    const-class v3, Lcom/adjust/sdk/Adjust;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 119
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static trackClearBasket()V
    .locals 4

    .prologue
    .line 231
    :try_start_0
    const-class v2, Lcom/yopeso/lieferando/util/TrackingUtils;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "trackClearBasket: 6ti3y4"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const/4 v1, 0x0

    .line 234
    .local v1, "event":Lcom/adjust/sdk/AdjustEvent;
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 235
    new-instance v1, Lcom/adjust/sdk/AdjustEvent;

    .end local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    const-string v2, "3683vv"

    invoke-direct {v1, v2}, Lcom/adjust/sdk/AdjustEvent;-><init>(Ljava/lang/String;)V

    .line 236
    .restart local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    invoke-static {v1}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/yopeso/lieferando/net/config/IConfig;->isTakeaway()Z

    move-result v2

    if-nez v2, :cond_0

    .line 243
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v2

    if-nez v2, :cond_0

    .line 253
    new-instance v1, Lcom/adjust/sdk/AdjustEvent;

    .end local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    const-string v2, "6ti3y4"

    invoke-direct {v1, v2}, Lcom/adjust/sdk/AdjustEvent;-><init>(Ljava/lang/String;)V

    .line 254
    .restart local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    invoke-static {v1}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static trackCloseApp()V
    .locals 5

    .prologue
    .line 407
    const/4 v1, 0x0

    .line 408
    .local v1, "event":Lcom/adjust/sdk/AdjustEvent;
    :try_start_0
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v3

    invoke-interface {v3}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 409
    new-instance v2, Lcom/adjust/sdk/AdjustEvent;

    const-string v3, "dcrb7w"

    invoke-direct {v2, v3}, Lcom/adjust/sdk/AdjustEvent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 410
    .end local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    .local v2, "event":Lcom/adjust/sdk/AdjustEvent;
    :try_start_1
    invoke-static {v2}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V

    .line 411
    const-class v3, Lcom/yopeso/lieferando/util/TrackingUtils;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "trackCloseApp: dcrb7w"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 439
    .end local v2    # "event":Lcom/adjust/sdk/AdjustEvent;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    :cond_0
    :goto_0
    return-void

    .line 414
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v3

    invoke-interface {v3}, Lcom/yopeso/lieferando/net/config/IConfig;->isTakeaway()Z

    move-result v3

    if-nez v3, :cond_0

    .line 419
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v3

    invoke-interface {v3}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v3

    if-nez v3, :cond_0

    .line 429
    new-instance v2, Lcom/adjust/sdk/AdjustEvent;

    const-string v3, "bktdbl"

    invoke-direct {v2, v3}, Lcom/adjust/sdk/AdjustEvent;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 430
    .end local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    .restart local v2    # "event":Lcom/adjust/sdk/AdjustEvent;
    :try_start_3
    invoke-static {v2}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V

    .line 431
    const-class v3, Lcom/yopeso/lieferando/util/TrackingUtils;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "trackCloseApp: bktdbl"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 436
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 437
    .end local v2    # "event":Lcom/adjust/sdk/AdjustEvent;
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 436
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static trackClosedDeliveryServices(I)V
    .locals 6
    .param p0, "count"    # I

    .prologue
    .line 652
    const/4 v1, 0x0

    .line 654
    .local v1, "event":Lcom/adjust/sdk/AdjustEvent;
    :try_start_0
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v3

    invoke-interface {v3}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 655
    new-instance v2, Lcom/adjust/sdk/AdjustEvent;

    const-string v3, "564rmi"

    invoke-direct {v2, v3}, Lcom/adjust/sdk/AdjustEvent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 656
    .end local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    .local v2, "event":Lcom/adjust/sdk/AdjustEvent;
    :try_start_1
    const-string v3, "actionValue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/adjust/sdk/AdjustEvent;->addCallbackParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    invoke-static {v2}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 682
    .end local v2    # "event":Lcom/adjust/sdk/AdjustEvent;
    :cond_0
    :goto_0
    return-void

    .line 659
    .restart local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v3

    invoke-interface {v3}, Lcom/yopeso/lieferando/net/config/IConfig;->isTakeaway()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 660
    new-instance v2, Lcom/adjust/sdk/AdjustEvent;

    .line 661
    const-string v3, "h2r7f1"

    .line 660
    invoke-direct {v2, v3}, Lcom/adjust/sdk/AdjustEvent;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 662
    .end local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    .restart local v2    # "event":Lcom/adjust/sdk/AdjustEvent;
    :try_start_3
    const-string v3, "actionValue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/adjust/sdk/AdjustEvent;->addCallbackParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    invoke-static {v2}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 679
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 680
    .end local v2    # "event":Lcom/adjust/sdk/AdjustEvent;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 665
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_4
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v3

    invoke-interface {v3}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v3

    if-nez v3, :cond_0

    .line 669
    new-instance v2, Lcom/adjust/sdk/AdjustEvent;

    .line 670
    const-string v3, "yl1qh1"

    .line 669
    invoke-direct {v2, v3}, Lcom/adjust/sdk/AdjustEvent;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 671
    .end local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    .restart local v2    # "event":Lcom/adjust/sdk/AdjustEvent;
    :try_start_5
    const-string v3, "actionValue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/adjust/sdk/AdjustEvent;->addCallbackParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    invoke-static {v2}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 679
    .end local v2    # "event":Lcom/adjust/sdk/AdjustEvent;
    .restart local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static trackCousine(Ljava/lang/String;)V
    .locals 6
    .param p0, "cousine"    # Ljava/lang/String;

    .prologue
    .line 959
    if-eqz p0, :cond_1

    .line 960
    sget-object v3, Lcom/yopeso/lieferando/util/TrackingUtils;->cuisineFilter:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/yopeso/lieferando/util/StringUtils;->isEqualStrings(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 961
    sput-object p0, Lcom/yopeso/lieferando/util/TrackingUtils;->cuisineFilter:Ljava/lang/String;

    .line 966
    const/4 v1, 0x0

    .line 968
    .local v1, "event":Lcom/adjust/sdk/AdjustEvent;
    :try_start_0
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v3

    invoke-interface {v3}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 969
    new-instance v2, Lcom/adjust/sdk/AdjustEvent;

    const-string v3, "5or36u"

    invoke-direct {v2, v3}, Lcom/adjust/sdk/AdjustEvent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 970
    .end local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    .local v2, "event":Lcom/adjust/sdk/AdjustEvent;
    :try_start_1
    const-string v3, "actionValue"

    invoke-virtual {v2, v3, p0}, Lcom/adjust/sdk/AdjustEvent;->addCallbackParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    invoke-static {v2}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 990
    .end local v2    # "event":Lcom/adjust/sdk/AdjustEvent;
    .restart local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    :cond_0
    :goto_0
    :try_start_2
    const-class v3, Lcom/yopeso/lieferando/util/TrackingUtils;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Adjust->trackCousine:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 991
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 990
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    .end local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    :cond_1
    :goto_1
    return-void

    .line 973
    .restart local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    :cond_2
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v3

    invoke-interface {v3}, Lcom/yopeso/lieferando/net/config/IConfig;->isTakeaway()Z

    move-result v3

    if-nez v3, :cond_0

    .line 979
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v3

    invoke-interface {v3}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v3

    if-nez v3, :cond_0

    .line 983
    new-instance v2, Lcom/adjust/sdk/AdjustEvent;

    const-string v3, "llkcxp"

    invoke-direct {v2, v3}, Lcom/adjust/sdk/AdjustEvent;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 984
    .end local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    .restart local v2    # "event":Lcom/adjust/sdk/AdjustEvent;
    :try_start_3
    const-string v3, "actionValue"

    invoke-virtual {v2, v3, p0}, Lcom/adjust/sdk/AdjustEvent;->addCallbackParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    invoke-static {v2}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object v1, v2

    .end local v2    # "event":Lcom/adjust/sdk/AdjustEvent;
    .restart local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    goto :goto_0

    .line 992
    :catch_0
    move-exception v0

    .line 993
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 992
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    .restart local v2    # "event":Lcom/adjust/sdk/AdjustEvent;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "event":Lcom/adjust/sdk/AdjustEvent;
    .restart local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    goto :goto_2
.end method

.method public static trackDecreaseItems(Ljava/lang/String;)V
    .locals 5
    .param p0, "mealId"    # Ljava/lang/String;

    .prologue
    .line 1759
    const/4 v1, 0x0

    .line 1760
    .local v1, "event":Lcom/adjust/sdk/AdjustEvent;
    :try_start_0
    const-class v3, Lcom/yopeso/lieferando/util/TrackingUtils;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "trackDecreaseItems:d88eii"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1762
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v3

    invoke-interface {v3}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1763
    new-instance v2, Lcom/adjust/sdk/AdjustEvent;

    const-string v3, "houcd2"

    invoke-direct {v2, v3}, Lcom/adjust/sdk/AdjustEvent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1764
    .end local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    .local v2, "event":Lcom/adjust/sdk/AdjustEvent;
    :try_start_1
    const-string v3, "actionValue"

    invoke-virtual {v2, v3, p0}, Lcom/adjust/sdk/AdjustEvent;->addCallbackParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1765
    invoke-static {v2}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1791
    .end local v2    # "event":Lcom/adjust/sdk/AdjustEvent;
    :cond_0
    :goto_0
    return-void

    .line 1767
    .restart local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v3

    invoke-interface {v3}, Lcom/yopeso/lieferando/net/config/IConfig;->isTakeaway()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1772
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v3

    invoke-interface {v3}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1782
    new-instance v2, Lcom/adjust/sdk/AdjustEvent;

    const-string v3, "d88eii"

    invoke-direct {v2, v3}, Lcom/adjust/sdk/AdjustEvent;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1783
    .end local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    .restart local v2    # "event":Lcom/adjust/sdk/AdjustEvent;
    :try_start_3
    const-string v3, "actionValue"

    invoke-virtual {v2, v3, p0}, Lcom/adjust/sdk/AdjustEvent;->addCallbackParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1784
    invoke-static {v2}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 1788
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 1789
    .end local v2    # "event":Lcom/adjust/sdk/AdjustEvent;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1788
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static trackDeleteFavoriteHeart(Ljava/lang/String;)V
    .locals 3
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 1358
    const/4 v0, 0x0

    .line 1359
    .local v0, "event":Lcom/adjust/sdk/AdjustEvent;
    const-class v1, Lcom/yopeso/lieferando/util/TrackingUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "trackDeleteFavoriteHeart: dh8jwg"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1362
    new-instance v0, Lcom/adjust/sdk/AdjustEvent;

    .end local v0    # "event":Lcom/adjust/sdk/AdjustEvent;
    const-string v1, "49axdo"

    invoke-direct {v0, v1}, Lcom/adjust/sdk/AdjustEvent;-><init>(Ljava/lang/String;)V

    .line 1363
    .restart local v0    # "event":Lcom/adjust/sdk/AdjustEvent;
    const-string v1, "actionValue"

    invoke-virtual {v0, v1, p0}, Lcom/adjust/sdk/AdjustEvent;->addCallbackParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1364
    invoke-static {v0}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V

    .line 1379
    :cond_0
    :goto_0
    return-void

    .line 1366
    :cond_1
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isTakeaway()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1369
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1373
    new-instance v0, Lcom/adjust/sdk/AdjustEvent;

    .end local v0    # "event":Lcom/adjust/sdk/AdjustEvent;
    const-string v1, "dh8jwg"

    invoke-direct {v0, v1}, Lcom/adjust/sdk/AdjustEvent;-><init>(Ljava/lang/String;)V

    .line 1374
    .restart local v0    # "event":Lcom/adjust/sdk/AdjustEvent;
    const-string v1, "actionValue"

    invoke-virtual {v0, v1, p0}, Lcom/adjust/sdk/AdjustEvent;->addCallbackParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1375
    invoke-static {v0}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V

    goto :goto_0
.end method

.method public static trackDynamiczipcode(Ljava/lang/String;I)V
    .locals 5
    .param p0, "plz"    # Ljava/lang/String;
    .param p1, "cityId"    # I

    .prologue
    .line 1577
    const/4 v1, 0x0

    .line 1578
    .local v1, "event":Lcom/adjust/sdk/AdjustEvent;
    :try_start_0
    const-class v3, Lcom/yopeso/lieferando/util/TrackingUtils;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "trackDynamiczipcode:pxjdlk"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1580
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v3

    invoke-interface {v3}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1581
    new-instance v2, Lcom/adjust/sdk/AdjustEvent;

    const-string v3, "w0jhif"

    invoke-direct {v2, v3}, Lcom/adjust/sdk/AdjustEvent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1582
    .end local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    .local v2, "event":Lcom/adjust/sdk/AdjustEvent;
    :try_start_1
    const-string v3, "actionValue"

    invoke-virtual {v2, v3, p0}, Lcom/adjust/sdk/AdjustEvent;->addCallbackParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1583
    invoke-static {v2}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1606
    .end local v2    # "event":Lcom/adjust/sdk/AdjustEvent;
    :cond_0
    :goto_0
    return-void

    .line 1586
    .restart local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v3

    invoke-interface {v3}, Lcom/yopeso/lieferando/net/config/IConfig;->isTakeaway()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1592
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v3

    invoke-interface {v3}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1595
    new-instance v2, Lcom/adjust/sdk/AdjustEvent;

    const-string v3, "pxjdlk"

    invoke-direct {v2, v3}, Lcom/adjust/sdk/AdjustEvent;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1596
    .end local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    .restart local v2    # "event":Lcom/adjust/sdk/AdjustEvent;
    :try_start_3
    const-string v3, "actionValue"

    invoke-virtual {v2, v3, p0}, Lcom/adjust/sdk/AdjustEvent;->addCallbackParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1597
    invoke-static {v2}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 1603
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 1604
    .end local v2    # "event":Lcom/adjust/sdk/AdjustEvent;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1603
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static trackEventKahuna(Ljava/lang/String;)V
    .locals 1
    .param p0, "event"    # Ljava/lang/String;

    .prologue
    .line 1303
    sget-boolean v0, Lcom/yopeso/lieferando/util/TrackingUtils;->enableKahuna:Z

    if-eqz v0, :cond_0

    .line 1304
    invoke-static {p0}, Lcom/kahuna/sdk/KahunaAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 1306
    :cond_0
    return-void
.end method

.method public static trackEventKahuna(Ljava/lang/String;II)V
    .locals 1
    .param p0, "event"    # Ljava/lang/String;
    .param p1, "count"    # I
    .param p2, "value"    # I

    .prologue
    .line 1309
    sget-boolean v0, Lcom/yopeso/lieferando/util/TrackingUtils;->enableKahuna:Z

    if-eqz v0, :cond_0

    .line 1310
    invoke-static {p0, p1, p2}, Lcom/kahuna/sdk/KahunaAnalytics;->trackEvent(Ljava/lang/String;II)V

    .line 1312
    :cond_0
    return-void
.end method

.method public static trackFB()V
    .locals 0

    .prologue
    .line 496
    return-void
.end method

.method public static trackFBCart(Landroid/content/Context;)V
    .locals 2
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 2350
    invoke-static {p0}, Lcom/facebook/AppEventsLogger;->newLogger(Landroid/content/Context;)Lcom/facebook/AppEventsLogger;

    move-result-object v0

    .line 2351
    .local v0, "logger":Lcom/facebook/AppEventsLogger;
    const-string v1, "fb_mobile_add_to_cart"

    invoke-virtual {v0, v1}, Lcom/facebook/AppEventsLogger;->logEvent(Ljava/lang/String;)V

    .line 2352
    invoke-virtual {v0}, Lcom/facebook/AppEventsLogger;->flush()V

    .line 2353
    return-void
.end method

.method public static trackFBCheckout(Landroid/content/Context;)V
    .locals 2
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 2338
    invoke-static {p0}, Lcom/facebook/AppEventsLogger;->newLogger(Landroid/content/Context;)Lcom/facebook/AppEventsLogger;

    move-result-object v0

    .line 2339
    .local v0, "logger":Lcom/facebook/AppEventsLogger;
    const-string v1, "fb_mobile_initiated_checkout"

    invoke-virtual {v0, v1}, Lcom/facebook/AppEventsLogger;->logEvent(Ljava/lang/String;)V

    .line 2340
    invoke-virtual {v0}, Lcom/facebook/AppEventsLogger;->flush()V

    .line 2341
    return-void
.end method

.method public static trackFBOrders(Landroid/content/Context;)V
    .locals 2
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 2332
    invoke-static {p0}, Lcom/facebook/AppEventsLogger;->newLogger(Landroid/content/Context;)Lcom/facebook/AppEventsLogger;

    move-result-object v0

    .line 2333
    .local v0, "logger":Lcom/facebook/AppEventsLogger;
    const-string v1, "fb_mobile_purchase"

    invoke-virtual {v0, v1}, Lcom/facebook/AppEventsLogger;->logEvent(Ljava/lang/String;)V

    .line 2334
    invoke-virtual {v0}, Lcom/facebook/AppEventsLogger;->flush()V

    .line 2335
    return-void
.end method

.method public static trackFBStart(Landroid/content/Context;)V
    .locals 2
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 2356
    invoke-static {p0}, Lcom/facebook/AppEventsLogger;->newLogger(Landroid/content/Context;)Lcom/facebook/AppEventsLogger;

    move-result-object v0

    .line 2357
    .local v0, "logger":Lcom/facebook/AppEventsLogger;
    const-string v1, "fb_mobile_content_view"

    invoke-virtual {v0, v1}, Lcom/facebook/AppEventsLogger;->logEvent(Ljava/lang/String;)V

    .line 2358
    invoke-virtual {v0}, Lcom/facebook/AppEventsLogger;->flush()V

    .line 2359
    return-void
.end method

.method public static trackFBZip(Landroid/content/Context;)V
    .locals 2
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 2344
    invoke-static {p0}, Lcom/facebook/AppEventsLogger;->newLogger(Landroid/content/Context;)Lcom/facebook/AppEventsLogger;

    move-result-object v0

    .line 2345
    .local v0, "logger":Lcom/facebook/AppEventsLogger;
    const-string v1, "fb_mobile_search"

    invoke-virtual {v0, v1}, Lcom/facebook/AppEventsLogger;->logEvent(Ljava/lang/String;)V

    .line 2346
    invoke-virtual {v0}, Lcom/facebook/AppEventsLogger;->flush()V

    .line 2347
    return-void
.end method

.method public static trackFacebookInstall(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 1107
    return-void
.end method

.method public static trackFilter(Ljava/lang/String;)V
    .locals 0
    .param p0, "last_filter_type"    # Ljava/lang/String;

    .prologue
    .line 1506
    invoke-static {p0}, Lcom/yopeso/lieferando/util/TrackingUtils;->filtersKahuna(Ljava/lang/String;)V

    .line 1507
    invoke-static {p0}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackFilterAdjust(Ljava/lang/String;)V

    .line 1508
    return-void
.end method

.method public static trackFilterAdjust(Ljava/lang/String;)V
    .locals 5
    .param p0, "last_filter_type"    # Ljava/lang/String;

    .prologue
    .line 1610
    :try_start_0
    const-class v2, Lcom/yopeso/lieferando/util/TrackingUtils;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Adjust->trackFilter:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1611
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1610
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    const/4 v1, 0x0

    .line 1623
    .local v1, "event":Lcom/adjust/sdk/AdjustEvent;
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1624
    new-instance v1, Lcom/adjust/sdk/AdjustEvent;

    .end local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    const-string v2, "22v80h"

    invoke-direct {v1, v2}, Lcom/adjust/sdk/AdjustEvent;-><init>(Ljava/lang/String;)V

    .line 1625
    .restart local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    const-string v2, "actionValue"

    invoke-virtual {v1, v2, p0}, Lcom/adjust/sdk/AdjustEvent;->addCallbackParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1626
    invoke-static {v1}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V

    .line 1652
    .end local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    :cond_0
    :goto_0
    return-void

    .line 1629
    .restart local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    :cond_1
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/yopeso/lieferando/net/config/IConfig;->isTakeaway()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1635
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1638
    new-instance v1, Lcom/adjust/sdk/AdjustEvent;

    .end local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    const-string v2, "vj59mh"

    invoke-direct {v1, v2}, Lcom/adjust/sdk/AdjustEvent;-><init>(Ljava/lang/String;)V

    .line 1639
    .restart local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    const-string v2, "actionValue"

    invoke-virtual {v1, v2, p0}, Lcom/adjust/sdk/AdjustEvent;->addCallbackParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1641
    invoke-static {v1}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1649
    .end local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    :catch_0
    move-exception v0

    .line 1650
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static trackIncreaseItems(Ljava/lang/String;)V
    .locals 5
    .param p0, "mealId"    # Ljava/lang/String;

    .prologue
    .line 1723
    const/4 v1, 0x0

    .line 1724
    .local v1, "event":Lcom/adjust/sdk/AdjustEvent;
    :try_start_0
    const-class v3, Lcom/yopeso/lieferando/util/TrackingUtils;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "trackIncreaseItems:8cb4sb"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1726
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v3

    invoke-interface {v3}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1727
    new-instance v2, Lcom/adjust/sdk/AdjustEvent;

    const-string v3, "9wffev"

    invoke-direct {v2, v3}, Lcom/adjust/sdk/AdjustEvent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1728
    .end local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    .local v2, "event":Lcom/adjust/sdk/AdjustEvent;
    :try_start_1
    const-string v3, "actionValue"

    invoke-virtual {v2, v3, p0}, Lcom/adjust/sdk/AdjustEvent;->addCallbackParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1729
    invoke-static {v2}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1755
    .end local v2    # "event":Lcom/adjust/sdk/AdjustEvent;
    :cond_0
    :goto_0
    return-void

    .line 1731
    .restart local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v3

    invoke-interface {v3}, Lcom/yopeso/lieferando/net/config/IConfig;->isTakeaway()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1736
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v3

    invoke-interface {v3}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1746
    new-instance v2, Lcom/adjust/sdk/AdjustEvent;

    const-string v3, "8cb4sb"

    invoke-direct {v2, v3}, Lcom/adjust/sdk/AdjustEvent;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1747
    .end local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    .restart local v2    # "event":Lcom/adjust/sdk/AdjustEvent;
    :try_start_3
    const-string v3, "actionValue"

    invoke-virtual {v2, v3, p0}, Lcom/adjust/sdk/AdjustEvent;->addCallbackParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1748
    invoke-static {v2}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 1752
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 1753
    .end local v2    # "event":Lcom/adjust/sdk/AdjustEvent;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1752
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static trackLogOut(Ljava/lang/String;)V
    .locals 6
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 535
    const-class v3, Lcom/yopeso/lieferando/util/TrackingUtils;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "trackLogOut->TAG: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    const/4 v1, 0x0

    .line 544
    .local v1, "event":Lcom/adjust/sdk/AdjustEvent;
    :try_start_0
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v3

    invoke-interface {v3}, Lcom/yopeso/lieferando/net/config/IConfig;->isTakeaway()Z

    move-result v3

    if-nez v3, :cond_0

    .line 548
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v3

    invoke-interface {v3}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 549
    new-instance v2, Lcom/adjust/sdk/AdjustEvent;

    const-string v3, "6yoynn"

    invoke-direct {v2, v3}, Lcom/adjust/sdk/AdjustEvent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 550
    .end local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    .local v2, "event":Lcom/adjust/sdk/AdjustEvent;
    :try_start_1
    const-string v3, "actionValue"

    invoke-virtual {v2, v3, p0}, Lcom/adjust/sdk/AdjustEvent;->addCallbackParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    invoke-static {v2}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 567
    .end local v2    # "event":Lcom/adjust/sdk/AdjustEvent;
    :cond_0
    :goto_0
    invoke-static {}, Lcom/yopeso/lieferando/util/TrackingUtils;->logoutKahuna()V

    .line 568
    return-void

    .line 553
    .restart local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v3

    invoke-interface {v3}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v3

    if-nez v3, :cond_0

    .line 556
    new-instance v2, Lcom/adjust/sdk/AdjustEvent;

    const-string v3, "li8j83"

    invoke-direct {v2, v3}, Lcom/adjust/sdk/AdjustEvent;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 557
    .end local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    .restart local v2    # "event":Lcom/adjust/sdk/AdjustEvent;
    :try_start_3
    const-string v3, "actionValue"

    invoke-virtual {v2, v3, p0}, Lcom/adjust/sdk/AdjustEvent;->addCallbackParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    invoke-static {v2}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 563
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 564
    .end local v2    # "event":Lcom/adjust/sdk/AdjustEvent;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 563
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static trackLogin(Ljava/lang/String;)V
    .locals 5
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 500
    :try_start_0
    const-class v2, Lcom/yopeso/lieferando/util/TrackingUtils;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "trackLogin->TAG: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    const/4 v1, 0x0

    .line 508
    .local v1, "event":Lcom/adjust/sdk/AdjustEvent;
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/yopeso/lieferando/net/config/IConfig;->isTakeaway()Z

    move-result v2

    if-nez v2, :cond_0

    .line 512
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 513
    new-instance v1, Lcom/adjust/sdk/AdjustEvent;

    .end local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    const-string v2, "hlbvtb"

    invoke-direct {v1, v2}, Lcom/adjust/sdk/AdjustEvent;-><init>(Ljava/lang/String;)V

    .line 514
    .restart local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    const-string v2, "actionValue"

    invoke-virtual {v1, v2, p0}, Lcom/adjust/sdk/AdjustEvent;->addCallbackParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    invoke-static {v1}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 530
    .end local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    :cond_0
    :goto_0
    invoke-static {}, Lcom/yopeso/lieferando/util/TrackingUtils;->setKahuna()V

    .line 531
    return-void

    .line 517
    .restart local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v2

    if-nez v2, :cond_0

    .line 520
    new-instance v1, Lcom/adjust/sdk/AdjustEvent;

    .end local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    const-string v2, "nueeaa"

    invoke-direct {v1, v2}, Lcom/adjust/sdk/AdjustEvent;-><init>(Ljava/lang/String;)V

    .line 521
    .restart local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    const-string v2, "actionValue"

    invoke-virtual {v1, v2, p0}, Lcom/adjust/sdk/AdjustEvent;->addCallbackParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    invoke-static {v1}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 527
    .end local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    :catch_0
    move-exception v0

    .line 528
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static trackMap()V
    .locals 3

    .prologue
    .line 1658
    :try_start_0
    const-class v1, Lcom/yopeso/lieferando/util/TrackingUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "trackMap"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1659
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1660
    const-string v1, "map"

    invoke-static {v1}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackView(Ljava/lang/String;)V

    .line 1684
    .local v0, "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .line 1662
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isTakeaway()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1668
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1672
    const-string v1, "map"

    invoke-static {v1}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackView(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1681
    :catch_0
    move-exception v0

    .line 1682
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static trackNewCustomerRebate()V
    .locals 3

    .prologue
    .line 1833
    :try_start_0
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1834
    const-string v1, "ncrebate"

    invoke-static {v1}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackRedeem(Ljava/lang/String;)V

    .line 1863
    .local v0, "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .line 1839
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isTakeaway()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1845
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1852
    const-string v1, "ncrebate"

    invoke-static {v1}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackRedeem(Ljava/lang/String;)V

    .line 1853
    const-class v1, Lcom/yopeso/lieferando/util/TrackingUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1854
    const-string v2, "trackNewCustomerRebate"

    .line 1853
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1860
    :catch_0
    move-exception v0

    .line 1861
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static trackOpenApp(Landroid/content/Context;)V
    .locals 3
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 133
    :try_start_0
    invoke-static {}, Lcom/yopeso/lieferando/util/TrackingUtils;->setKahuna()V

    .line 139
    const-class v1, Lcom/yopeso/lieferando/util/TrackingUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "trackOpenApp"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    new-instance v1, Lcom/adjust/sdk/AdjustEvent;

    const-string v2, "zi0uff"

    invoke-direct {v1, v2}, Lcom/adjust/sdk/AdjustEvent;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V

    .line 164
    :goto_0
    return-void

    .line 144
    :cond_0
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isTakeaway()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 145
    new-instance v1, Lcom/adjust/sdk/AdjustEvent;

    const-string v2, "32lzm1"

    invoke-direct {v1, v2}, Lcom/adjust/sdk/AdjustEvent;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 148
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 149
    new-instance v1, Lcom/adjust/sdk/AdjustEvent;

    const-string v2, "uixv4c"

    invoke-direct {v1, v2}, Lcom/adjust/sdk/AdjustEvent;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V

    .line 150
    const-class v1, Lcom/yopeso/lieferando/util/TrackingUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 151
    const-string v2, "trackOpenApp isCallaPizza"

    .line 150
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 153
    :cond_2
    new-instance v1, Lcom/adjust/sdk/AdjustEvent;

    const-string v2, "yzf7xy"

    invoke-direct {v1, v2}, Lcom/adjust/sdk/AdjustEvent;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static trackOpenDeliveryServices(I)V
    .locals 6
    .param p0, "count"    # I

    .prologue
    .line 688
    const/4 v1, 0x0

    .line 690
    .local v1, "event":Lcom/adjust/sdk/AdjustEvent;
    :try_start_0
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v3

    invoke-interface {v3}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 691
    new-instance v2, Lcom/adjust/sdk/AdjustEvent;

    const-string v3, "w8iwkv"

    invoke-direct {v2, v3}, Lcom/adjust/sdk/AdjustEvent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 692
    .end local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    .local v2, "event":Lcom/adjust/sdk/AdjustEvent;
    :try_start_1
    const-string v3, "actionValue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/adjust/sdk/AdjustEvent;->addCallbackParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    invoke-static {v2}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 717
    .end local v2    # "event":Lcom/adjust/sdk/AdjustEvent;
    :cond_0
    :goto_0
    return-void

    .line 695
    .restart local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v3

    invoke-interface {v3}, Lcom/yopeso/lieferando/net/config/IConfig;->isTakeaway()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 696
    new-instance v2, Lcom/adjust/sdk/AdjustEvent;

    .line 697
    const-string v3, "ehctb7"

    .line 696
    invoke-direct {v2, v3}, Lcom/adjust/sdk/AdjustEvent;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 698
    .end local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    .restart local v2    # "event":Lcom/adjust/sdk/AdjustEvent;
    :try_start_3
    const-string v3, "actionValue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/adjust/sdk/AdjustEvent;->addCallbackParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    invoke-static {v2}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 714
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 715
    .end local v2    # "event":Lcom/adjust/sdk/AdjustEvent;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 701
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_4
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v3

    invoke-interface {v3}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v3

    if-nez v3, :cond_0

    .line 704
    new-instance v2, Lcom/adjust/sdk/AdjustEvent;

    .line 705
    const-string v3, "vg3l1a"

    .line 704
    invoke-direct {v2, v3}, Lcom/adjust/sdk/AdjustEvent;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 706
    .end local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    .restart local v2    # "event":Lcom/adjust/sdk/AdjustEvent;
    :try_start_5
    const-string v3, "actionValue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/adjust/sdk/AdjustEvent;->addCallbackParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    invoke-static {v2}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 714
    .end local v2    # "event":Lcom/adjust/sdk/AdjustEvent;
    .restart local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static trackPostCode(Ljava/lang/String;ILandroid/content/Context;)V
    .locals 6
    .param p0, "plz"    # Ljava/lang/String;
    .param p1, "cityId"    # I
    .param p2, "c"    # Landroid/content/Context;

    .prologue
    .line 1053
    :try_start_0
    const-class v3, Lcom/yopeso/lieferando/util/TrackingUtils;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "trackPostCode plz:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1055
    .local v0, "adjustParam":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "actionValue"

    invoke-interface {v0, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1056
    const/4 v2, 0x0

    .line 1057
    .local v2, "event":Lcom/adjust/sdk/AdjustEvent;
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v3

    invoke-interface {v3}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1058
    new-instance v2, Lcom/adjust/sdk/AdjustEvent;

    .end local v2    # "event":Lcom/adjust/sdk/AdjustEvent;
    const-string v3, "t9ijqi"

    invoke-direct {v2, v3}, Lcom/adjust/sdk/AdjustEvent;-><init>(Ljava/lang/String;)V

    .line 1059
    .restart local v2    # "event":Lcom/adjust/sdk/AdjustEvent;
    const-string v3, "actionValue"

    invoke-virtual {v2, v3, p0}, Lcom/adjust/sdk/AdjustEvent;->addCallbackParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    invoke-static {v2}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V

    .line 1097
    .end local v0    # "adjustParam":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "event":Lcom/adjust/sdk/AdjustEvent;
    :cond_0
    :goto_0
    return-void

    .line 1063
    .restart local v0    # "adjustParam":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v2    # "event":Lcom/adjust/sdk/AdjustEvent;
    :cond_1
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v3

    invoke-interface {v3}, Lcom/yopeso/lieferando/net/config/IConfig;->isTakeaway()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1064
    new-instance v2, Lcom/adjust/sdk/AdjustEvent;

    .end local v2    # "event":Lcom/adjust/sdk/AdjustEvent;
    const-string v3, "mz1j1k"

    invoke-direct {v2, v3}, Lcom/adjust/sdk/AdjustEvent;-><init>(Ljava/lang/String;)V

    .line 1065
    .restart local v2    # "event":Lcom/adjust/sdk/AdjustEvent;
    const-string v3, "actionValue"

    invoke-virtual {v2, v3, p0}, Lcom/adjust/sdk/AdjustEvent;->addCallbackParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    invoke-static {v2}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1094
    .end local v0    # "adjustParam":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "event":Lcom/adjust/sdk/AdjustEvent;
    :catch_0
    move-exception v1

    .line 1095
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1070
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "adjustParam":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v2    # "event":Lcom/adjust/sdk/AdjustEvent;
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v3

    invoke-interface {v3}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1071
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    .line 1079
    new-instance v2, Lcom/adjust/sdk/AdjustEvent;

    .line 1080
    .end local v2    # "event":Lcom/adjust/sdk/AdjustEvent;
    const-string v3, "50d1zx"

    .line 1079
    invoke-direct {v2, v3}, Lcom/adjust/sdk/AdjustEvent;-><init>(Ljava/lang/String;)V

    .line 1081
    .restart local v2    # "event":Lcom/adjust/sdk/AdjustEvent;
    const-string v3, "actionValue"

    invoke-virtual {v2, v3, p0}, Lcom/adjust/sdk/AdjustEvent;->addCallbackParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    invoke-static {v2}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V

    goto :goto_0

    .line 1085
    :cond_3
    new-instance v2, Lcom/adjust/sdk/AdjustEvent;

    .line 1086
    .end local v2    # "event":Lcom/adjust/sdk/AdjustEvent;
    const-string v3, "m3sq57"

    .line 1085
    invoke-direct {v2, v3}, Lcom/adjust/sdk/AdjustEvent;-><init>(Ljava/lang/String;)V

    .line 1087
    .restart local v2    # "event":Lcom/adjust/sdk/AdjustEvent;
    const-string v3, "actionValue"

    invoke-virtual {v2, v3, p0}, Lcom/adjust/sdk/AdjustEvent;->addCallbackParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1088
    invoke-static {v2}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static trackRateApp()V
    .locals 4

    .prologue
    .line 266
    :try_start_0
    const-class v2, Lcom/yopeso/lieferando/util/TrackingUtils;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "trackRateApp: 1yj671"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    const/4 v1, 0x0

    .line 269
    .local v1, "event":Lcom/adjust/sdk/AdjustEvent;
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 270
    new-instance v1, Lcom/adjust/sdk/AdjustEvent;

    .end local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    const-string v2, "4pglmr"

    invoke-direct {v1, v2}, Lcom/adjust/sdk/AdjustEvent;-><init>(Ljava/lang/String;)V

    .line 271
    .restart local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    invoke-static {v1}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V

    .line 296
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/yopeso/lieferando/net/config/IConfig;->isTakeaway()Z

    move-result v2

    if-nez v2, :cond_0

    .line 278
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v2

    if-nez v2, :cond_0

    .line 288
    new-instance v1, Lcom/adjust/sdk/AdjustEvent;

    .end local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    const-string v2, "1yj671"

    invoke-direct {v1, v2}, Lcom/adjust/sdk/AdjustEvent;-><init>(Ljava/lang/String;)V

    .line 289
    .restart local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    invoke-static {v1}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 293
    :catch_0
    move-exception v0

    .line 294
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static trackRateOrder(Ljava/lang/String;)V
    .locals 4
    .param p0, "orderId"    # Ljava/lang/String;

    .prologue
    .line 301
    :try_start_0
    const-class v2, Lcom/yopeso/lieferando/util/TrackingUtils;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "trackRateOrder: v9e2n3"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    const/4 v1, 0x0

    .line 304
    .local v1, "event":Lcom/adjust/sdk/AdjustEvent;
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 305
    new-instance v1, Lcom/adjust/sdk/AdjustEvent;

    .end local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    const-string v2, "50h7sg"

    invoke-direct {v1, v2}, Lcom/adjust/sdk/AdjustEvent;-><init>(Ljava/lang/String;)V

    .line 306
    .restart local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    const-string v2, "actionValue"

    invoke-virtual {v1, v2, p0}, Lcom/adjust/sdk/AdjustEvent;->addCallbackParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-static {v1}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V

    .line 333
    .end local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    :cond_0
    :goto_0
    return-void

    .line 309
    .restart local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    :cond_1
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/yopeso/lieferando/net/config/IConfig;->isTakeaway()Z

    move-result v2

    if-nez v2, :cond_0

    .line 314
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v2

    if-nez v2, :cond_0

    .line 324
    new-instance v1, Lcom/adjust/sdk/AdjustEvent;

    .end local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    const-string v2, "v9e2n3"

    invoke-direct {v1, v2}, Lcom/adjust/sdk/AdjustEvent;-><init>(Ljava/lang/String;)V

    .line 325
    .restart local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    const-string v2, "actionValue"

    invoke-virtual {v1, v2, p0}, Lcom/adjust/sdk/AdjustEvent;->addCallbackParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    invoke-static {v1}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 330
    .end local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    :catch_0
    move-exception v0

    .line 331
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static trackRebate()V
    .locals 3

    .prologue
    .line 1869
    const/4 v1, 0x0

    .line 1870
    .local v1, "event":Lcom/adjust/sdk/AdjustEvent;
    :try_start_0
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1871
    const-string v2, "rebate"

    invoke-static {v2}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackRedeem(Ljava/lang/String;)V

    .line 1901
    :cond_0
    :goto_0
    return-void

    .line 1874
    :cond_1
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/yopeso/lieferando/net/config/IConfig;->isTakeaway()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1880
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1884
    const-string v2, "rebate"

    invoke-static {v2}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackRedeem(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1898
    :catch_0
    move-exception v0

    .line 1899
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static trackReccomendRestaurant(Ljava/lang/String;)V
    .locals 5
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 337
    const/4 v1, 0x0

    .line 338
    .local v1, "event":Lcom/adjust/sdk/AdjustEvent;
    :try_start_0
    const-class v3, Lcom/yopeso/lieferando/util/TrackingUtils;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "trackReccomendResto: lppa4p"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v3

    invoke-interface {v3}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 341
    new-instance v2, Lcom/adjust/sdk/AdjustEvent;

    const-string v3, "rsajmd"

    invoke-direct {v2, v3}, Lcom/adjust/sdk/AdjustEvent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 342
    .end local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    .local v2, "event":Lcom/adjust/sdk/AdjustEvent;
    :try_start_1
    const-string v3, "actionValue"

    invoke-virtual {v2, v3, p0}, Lcom/adjust/sdk/AdjustEvent;->addCallbackParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    invoke-static {v2}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 369
    .end local v2    # "event":Lcom/adjust/sdk/AdjustEvent;
    :cond_0
    :goto_0
    return-void

    .line 345
    .restart local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v3

    invoke-interface {v3}, Lcom/yopeso/lieferando/net/config/IConfig;->isTakeaway()Z

    move-result v3

    if-nez v3, :cond_0

    .line 350
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v3

    invoke-interface {v3}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v3

    if-nez v3, :cond_0

    .line 360
    new-instance v2, Lcom/adjust/sdk/AdjustEvent;

    const-string v3, "lppa4p"

    invoke-direct {v2, v3}, Lcom/adjust/sdk/AdjustEvent;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 361
    .end local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    .restart local v2    # "event":Lcom/adjust/sdk/AdjustEvent;
    :try_start_3
    const-string v3, "actionValue"

    invoke-virtual {v2, v3, p0}, Lcom/adjust/sdk/AdjustEvent;->addCallbackParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    invoke-static {v2}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 366
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 367
    .end local v2    # "event":Lcom/adjust/sdk/AdjustEvent;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 366
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static trackRedeem(Ljava/lang/String;)V
    .locals 5
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 1688
    const/4 v1, 0x0

    .line 1689
    .local v1, "event":Lcom/adjust/sdk/AdjustEvent;
    :try_start_0
    const-class v3, Lcom/yopeso/lieferando/util/TrackingUtils;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "trackRedeem:n16hqq"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1690
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v3

    invoke-interface {v3}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1691
    new-instance v2, Lcom/adjust/sdk/AdjustEvent;

    const-string v3, "dgp3s1"

    invoke-direct {v2, v3}, Lcom/adjust/sdk/AdjustEvent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1692
    .end local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    .local v2, "event":Lcom/adjust/sdk/AdjustEvent;
    :try_start_1
    const-string v3, "actionValue"

    invoke-virtual {v2, v3, p0}, Lcom/adjust/sdk/AdjustEvent;->addCallbackParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1693
    invoke-static {v2}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1719
    .end local v2    # "event":Lcom/adjust/sdk/AdjustEvent;
    :cond_0
    :goto_0
    return-void

    .line 1695
    .restart local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v3

    invoke-interface {v3}, Lcom/yopeso/lieferando/net/config/IConfig;->isTakeaway()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1700
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v3

    invoke-interface {v3}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1710
    new-instance v2, Lcom/adjust/sdk/AdjustEvent;

    const-string v3, "n16hqq"

    invoke-direct {v2, v3}, Lcom/adjust/sdk/AdjustEvent;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1711
    .end local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    .restart local v2    # "event":Lcom/adjust/sdk/AdjustEvent;
    :try_start_3
    const-string v3, "actionValue"

    invoke-virtual {v2, v3, p0}, Lcom/adjust/sdk/AdjustEvent;->addCallbackParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1712
    invoke-static {v2}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 1716
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 1717
    .end local v2    # "event":Lcom/adjust/sdk/AdjustEvent;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1716
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static trackRedeemVoucher()V
    .locals 2

    .prologue
    .line 2298
    :try_start_0
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2299
    const-string v1, "voucher"

    invoke-static {v1}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackRedeem(Ljava/lang/String;)V

    .line 2327
    .local v0, "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .line 2302
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isTakeaway()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2308
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2318
    const-string v1, "voucher"

    invoke-static {v1}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackRedeem(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2324
    :catch_0
    move-exception v0

    .line 2325
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static trackRegister(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .param p0, "first_name"    # Ljava/lang/String;
    .param p1, "last_name"    # Ljava/lang/String;
    .param p2, "city"    # Ljava/lang/String;
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "zip"    # Ljava/lang/String;
    .param p5, "dob"    # Ljava/lang/String;
    .param p6, "gender"    # Ljava/lang/String;
    .param p7, "c"    # Landroid/content/Context;

    .prologue
    .line 1019
    invoke-static {}, Lcom/yopeso/lieferando/util/TrackingUtils;->addNewAccountAdjust()V

    .line 1020
    invoke-static/range {p0 .. p6}, Lcom/yopeso/lieferando/util/TrackingUtils;->signUpKahuna(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    return-void
.end method

.method public static trackRemoveItemFromBasket(Ljava/lang/String;)V
    .locals 5
    .param p0, "mealId"    # Ljava/lang/String;

    .prologue
    .line 1795
    const/4 v1, 0x0

    .line 1796
    .local v1, "event":Lcom/adjust/sdk/AdjustEvent;
    :try_start_0
    const-class v3, Lcom/yopeso/lieferando/util/TrackingUtils;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "trackRemoveItemFromBasket:fyuznm"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1798
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v3

    invoke-interface {v3}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1799
    new-instance v2, Lcom/adjust/sdk/AdjustEvent;

    const-string v3, "pc7anx"

    invoke-direct {v2, v3}, Lcom/adjust/sdk/AdjustEvent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1800
    .end local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    .local v2, "event":Lcom/adjust/sdk/AdjustEvent;
    :try_start_1
    const-string v3, "actionValue"

    invoke-virtual {v2, v3, p0}, Lcom/adjust/sdk/AdjustEvent;->addCallbackParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1801
    invoke-static {v2}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1827
    .end local v2    # "event":Lcom/adjust/sdk/AdjustEvent;
    :cond_0
    :goto_0
    return-void

    .line 1803
    .restart local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v3

    invoke-interface {v3}, Lcom/yopeso/lieferando/net/config/IConfig;->isTakeaway()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1808
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v3

    invoke-interface {v3}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1818
    new-instance v2, Lcom/adjust/sdk/AdjustEvent;

    const-string v3, "fyuznm"

    invoke-direct {v2, v3}, Lcom/adjust/sdk/AdjustEvent;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1819
    .end local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    .restart local v2    # "event":Lcom/adjust/sdk/AdjustEvent;
    :try_start_3
    const-string v3, "actionValue"

    invoke-virtual {v2, v3, p0}, Lcom/adjust/sdk/AdjustEvent;->addCallbackParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1820
    invoke-static {v2}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 1824
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 1825
    .end local v2    # "event":Lcom/adjust/sdk/AdjustEvent;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1824
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static trackReorder(Ljava/lang/String;)V
    .locals 6
    .param p0, "orderId"    # Ljava/lang/String;

    .prologue
    .line 858
    const/4 v1, 0x0

    .line 860
    .local v1, "event":Lcom/adjust/sdk/AdjustEvent;
    :try_start_0
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v3

    invoke-interface {v3}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 861
    new-instance v2, Lcom/adjust/sdk/AdjustEvent;

    const-string v3, "tssg0d"

    invoke-direct {v2, v3}, Lcom/adjust/sdk/AdjustEvent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 862
    .end local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    .local v2, "event":Lcom/adjust/sdk/AdjustEvent;
    :try_start_1
    const-string v3, "actionValue"

    invoke-virtual {v2, v3, p0}, Lcom/adjust/sdk/AdjustEvent;->addCallbackParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    invoke-static {v2}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V

    .line 864
    const-class v3, Lcom/yopeso/lieferando/util/TrackingUtils;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "trackReorder:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 865
    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "tssg0d"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 864
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 890
    .end local v2    # "event":Lcom/adjust/sdk/AdjustEvent;
    :cond_0
    :goto_0
    return-void

    .line 867
    .restart local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v3

    invoke-interface {v3}, Lcom/yopeso/lieferando/net/config/IConfig;->isTakeaway()Z

    move-result v3

    if-nez v3, :cond_0

    .line 872
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v3

    invoke-interface {v3}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v3

    if-nez v3, :cond_0

    .line 876
    new-instance v2, Lcom/adjust/sdk/AdjustEvent;

    const-string v3, "hrzp9b"

    invoke-direct {v2, v3}, Lcom/adjust/sdk/AdjustEvent;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 877
    .end local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    .restart local v2    # "event":Lcom/adjust/sdk/AdjustEvent;
    :try_start_3
    const-string v3, "actionValue"

    invoke-virtual {v2, v3, p0}, Lcom/adjust/sdk/AdjustEvent;->addCallbackParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    invoke-static {v2}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V

    .line 879
    const-class v3, Lcom/yopeso/lieferando/util/TrackingUtils;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "trackReorder:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 880
    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "hrzp9b"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 879
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 886
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 887
    .end local v2    # "event":Lcom/adjust/sdk/AdjustEvent;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 886
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static trackRestaurantOpen(I)V
    .locals 0
    .param p0, "restaurantId"    # I

    .prologue
    .line 645
    return-void
.end method

.method public static trackSales(IZLjava/lang/String;ILcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V
    .locals 5
    .param p0, "cost"    # I
    .param p1, "loggedIn"    # Z
    .param p2, "email"    # Ljava/lang/String;
    .param p3, "restaurantId"    # I
    .param p4, "paymentMethod"    # Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;
    .param p5, "phone"    # Ljava/lang/String;
    .param p6, "orderId"    # Ljava/lang/String;
    .param p7, "plz"    # Ljava/lang/String;
    .param p8, "cityId"    # I
    .param p9, "c"    # Landroid/content/Context;

    .prologue
    .line 186
    :try_start_0
    const-class v2, Lcom/yopeso/lieferando/util/TrackingUtils;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "trackSales->orderId:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cost:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 186
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const/4 v1, 0x0

    .line 189
    .local v1, "event":Lcom/adjust/sdk/AdjustEvent;
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 190
    new-instance v1, Lcom/adjust/sdk/AdjustEvent;

    .end local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    const-string v2, "durvuy"

    invoke-direct {v1, v2}, Lcom/adjust/sdk/AdjustEvent;-><init>(Ljava/lang/String;)V

    .line 191
    .restart local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    const-string v2, "actionValue"

    invoke-virtual {v1, v2, p6}, Lcom/adjust/sdk/AdjustEvent;->addCallbackParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    int-to-double v2, p0

    const-string v4, "PLN"

    invoke-virtual {v1, v2, v3, v4}, Lcom/adjust/sdk/AdjustEvent;->setRevenue(DLjava/lang/String;)V

    .line 193
    invoke-static {v1}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V

    .line 227
    .end local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    :goto_0
    return-void

    .line 196
    .restart local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    :cond_0
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/yopeso/lieferando/net/config/IConfig;->isTakeaway()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 197
    new-instance v1, Lcom/adjust/sdk/AdjustEvent;

    .end local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    const-string v2, "qrb5al"

    invoke-direct {v1, v2}, Lcom/adjust/sdk/AdjustEvent;-><init>(Ljava/lang/String;)V

    .line 198
    .restart local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    const-string v2, "actionValue"

    invoke-virtual {v1, v2, p6}, Lcom/adjust/sdk/AdjustEvent;->addCallbackParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-static {v1}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 223
    .end local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    :catch_0
    move-exception v0

    .line 224
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 202
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 209
    new-instance v1, Lcom/adjust/sdk/AdjustEvent;

    .end local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    const-string v2, "jcqvw5"

    invoke-direct {v1, v2}, Lcom/adjust/sdk/AdjustEvent;-><init>(Ljava/lang/String;)V

    .line 210
    .restart local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    const-string v2, "actionValue"

    invoke-virtual {v1, v2, p6}, Lcom/adjust/sdk/AdjustEvent;->addCallbackParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    int-to-double v2, p0

    const-string v4, "EUR"

    invoke-virtual {v1, v2, v3, v4}, Lcom/adjust/sdk/AdjustEvent;->setRevenue(DLjava/lang/String;)V

    .line 212
    invoke-static {v1}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V

    goto :goto_0

    .line 214
    :cond_2
    new-instance v1, Lcom/adjust/sdk/AdjustEvent;

    .end local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    const-string v2, "qrb5al"

    invoke-direct {v1, v2}, Lcom/adjust/sdk/AdjustEvent;-><init>(Ljava/lang/String;)V

    .line 215
    .restart local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    const-string v2, "actionValue"

    invoke-virtual {v1, v2, p6}, Lcom/adjust/sdk/AdjustEvent;->addCallbackParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    int-to-double v2, p0

    const-string v4, "EUR"

    invoke-virtual {v1, v2, v3, v4}, Lcom/adjust/sdk/AdjustEvent;->setRevenue(DLjava/lang/String;)V

    .line 217
    invoke-static {v1}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static trackSearchCathegory(Ljava/lang/String;)V
    .locals 4
    .param p0, "querry"    # Ljava/lang/String;

    .prologue
    .line 787
    if-eqz p0, :cond_1

    sget-object v0, Lcom/yopeso/lieferando/util/TrackingUtils;->searchCategory:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/yopeso/lieferando/util/StringUtils;->isEqualStrings(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 788
    sget-object v0, Lcom/yopeso/lieferando/util/TrackingUtils;->searchCategory:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sget-object v1, Lcom/yopeso/lieferando/util/TrackingUtils;->searchCategory:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_2

    .line 790
    sput-object p0, Lcom/yopeso/lieferando/util/TrackingUtils;->searchCategory:Ljava/lang/String;

    .line 805
    :cond_0
    :goto_0
    sget-object v0, Lcom/yopeso/lieferando/util/TrackingUtils;->searchCategory:Ljava/lang/String;

    if-ne v0, p0, :cond_1

    .line 806
    sget-object v0, Lcom/yopeso/lieferando/util/TrackingUtils;->searchCategoryTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 807
    const/4 v0, 0x0

    sput-object v0, Lcom/yopeso/lieferando/util/TrackingUtils;->searchCategoryTimer:Ljava/util/Timer;

    .line 808
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/yopeso/lieferando/util/TrackingUtils;->searchCategoryTimer:Ljava/util/Timer;

    .line 809
    sget-object v0, Lcom/yopeso/lieferando/util/TrackingUtils;->searchCategoryTimer:Ljava/util/Timer;

    new-instance v1, Lcom/yopeso/lieferando/util/TrackingUtils$2;

    invoke-direct {v1}, Lcom/yopeso/lieferando/util/TrackingUtils$2;-><init>()V

    .line 849
    const-wide/16 v2, 0xbb8

    .line 809
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 852
    :cond_1
    return-void

    .line 792
    :cond_2
    sget-object v0, Lcom/yopeso/lieferando/util/TrackingUtils;->searchCategory:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 793
    sput-object p0, Lcom/yopeso/lieferando/util/TrackingUtils;->searchCategory:Ljava/lang/String;

    goto :goto_0

    .line 797
    :cond_3
    sget-object v0, Lcom/yopeso/lieferando/util/TrackingUtils;->searchCategory:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 800
    sput-object p0, Lcom/yopeso/lieferando/util/TrackingUtils;->searchCategory:Ljava/lang/String;

    goto :goto_0
.end method

.method public static trackSearchProduct(Ljava/lang/String;)V
    .locals 4
    .param p0, "querry"    # Ljava/lang/String;

    .prologue
    .line 893
    if-eqz p0, :cond_1

    sget-object v0, Lcom/yopeso/lieferando/util/TrackingUtils;->searchProduct:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/yopeso/lieferando/util/StringUtils;->isEqualStrings(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 894
    sget-object v0, Lcom/yopeso/lieferando/util/TrackingUtils;->searchProduct:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sget-object v1, Lcom/yopeso/lieferando/util/TrackingUtils;->searchProduct:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_2

    .line 896
    sput-object p0, Lcom/yopeso/lieferando/util/TrackingUtils;->searchProduct:Ljava/lang/String;

    .line 911
    :cond_0
    :goto_0
    sget-object v0, Lcom/yopeso/lieferando/util/TrackingUtils;->searchProduct:Ljava/lang/String;

    if-ne v0, p0, :cond_1

    .line 912
    sget-object v0, Lcom/yopeso/lieferando/util/TrackingUtils;->searchProductTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 913
    const/4 v0, 0x0

    sput-object v0, Lcom/yopeso/lieferando/util/TrackingUtils;->searchProductTimer:Ljava/util/Timer;

    .line 914
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/yopeso/lieferando/util/TrackingUtils;->searchProductTimer:Ljava/util/Timer;

    .line 915
    sget-object v0, Lcom/yopeso/lieferando/util/TrackingUtils;->searchProductTimer:Ljava/util/Timer;

    new-instance v1, Lcom/yopeso/lieferando/util/TrackingUtils$3;

    invoke-direct {v1}, Lcom/yopeso/lieferando/util/TrackingUtils$3;-><init>()V

    .line 953
    const-wide/16 v2, 0xbb8

    .line 915
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 956
    :cond_1
    return-void

    .line 898
    :cond_2
    sget-object v0, Lcom/yopeso/lieferando/util/TrackingUtils;->searchProduct:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 899
    sput-object p0, Lcom/yopeso/lieferando/util/TrackingUtils;->searchProduct:Ljava/lang/String;

    goto :goto_0

    .line 903
    :cond_3
    sget-object v0, Lcom/yopeso/lieferando/util/TrackingUtils;->searchProduct:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 906
    sput-object p0, Lcom/yopeso/lieferando/util/TrackingUtils;->searchProduct:Ljava/lang/String;

    goto :goto_0
.end method

.method public static trackSearchRestaurant(Ljava/lang/String;)V
    .locals 4
    .param p0, "querry"    # Ljava/lang/String;

    .prologue
    .line 720
    if-eqz p0, :cond_1

    sget-object v0, Lcom/yopeso/lieferando/util/TrackingUtils;->searchFilter:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/yopeso/lieferando/util/StringUtils;->isEqualStrings(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 721
    sget-object v0, Lcom/yopeso/lieferando/util/TrackingUtils;->searchFilter:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sget-object v1, Lcom/yopeso/lieferando/util/TrackingUtils;->searchFilter:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_2

    .line 723
    sput-object p0, Lcom/yopeso/lieferando/util/TrackingUtils;->searchFilter:Ljava/lang/String;

    .line 738
    :cond_0
    :goto_0
    sget-object v0, Lcom/yopeso/lieferando/util/TrackingUtils;->searchFilter:Ljava/lang/String;

    if-ne v0, p0, :cond_1

    .line 739
    sget-object v0, Lcom/yopeso/lieferando/util/TrackingUtils;->searchFilterTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 740
    const/4 v0, 0x0

    sput-object v0, Lcom/yopeso/lieferando/util/TrackingUtils;->searchFilterTimer:Ljava/util/Timer;

    .line 741
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/yopeso/lieferando/util/TrackingUtils;->searchFilterTimer:Ljava/util/Timer;

    .line 742
    sget-object v0, Lcom/yopeso/lieferando/util/TrackingUtils;->searchFilterTimer:Ljava/util/Timer;

    new-instance v1, Lcom/yopeso/lieferando/util/TrackingUtils$1;

    invoke-direct {v1}, Lcom/yopeso/lieferando/util/TrackingUtils$1;-><init>()V

    .line 781
    const-wide/16 v2, 0xbb8

    .line 742
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 784
    :cond_1
    return-void

    .line 725
    :cond_2
    sget-object v0, Lcom/yopeso/lieferando/util/TrackingUtils;->searchFilter:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 726
    sput-object p0, Lcom/yopeso/lieferando/util/TrackingUtils;->searchFilter:Ljava/lang/String;

    goto :goto_0

    .line 730
    :cond_3
    sget-object v0, Lcom/yopeso/lieferando/util/TrackingUtils;->searchFilter:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 733
    sput-object p0, Lcom/yopeso/lieferando/util/TrackingUtils;->searchFilter:Ljava/lang/String;

    goto :goto_0
.end method

.method public static trackSelectAddress(Ljava/lang/String;)V
    .locals 3
    .param p0, "plz"    # Ljava/lang/String;

    .prologue
    .line 1382
    const/4 v0, 0x0

    .line 1384
    .local v0, "event":Lcom/adjust/sdk/AdjustEvent;
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1385
    new-instance v0, Lcom/adjust/sdk/AdjustEvent;

    .end local v0    # "event":Lcom/adjust/sdk/AdjustEvent;
    const-string v1, "wufwpv"

    invoke-direct {v0, v1}, Lcom/adjust/sdk/AdjustEvent;-><init>(Ljava/lang/String;)V

    .line 1386
    .restart local v0    # "event":Lcom/adjust/sdk/AdjustEvent;
    const-string v1, "actionValue"

    invoke-virtual {v0, v1, p0}, Lcom/adjust/sdk/AdjustEvent;->addCallbackParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1387
    invoke-static {v0}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V

    .line 1388
    const-class v1, Lcom/yopeso/lieferando/util/TrackingUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "trackClickOrderNow: wufwpv"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    :cond_0
    :goto_0
    return-void

    .line 1391
    :cond_1
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isTakeaway()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1394
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1398
    new-instance v0, Lcom/adjust/sdk/AdjustEvent;

    .end local v0    # "event":Lcom/adjust/sdk/AdjustEvent;
    const-string v1, "2g7vwz"

    invoke-direct {v0, v1}, Lcom/adjust/sdk/AdjustEvent;-><init>(Ljava/lang/String;)V

    .line 1399
    .restart local v0    # "event":Lcom/adjust/sdk/AdjustEvent;
    const-string v1, "actionValue"

    invoke-virtual {v0, v1, p0}, Lcom/adjust/sdk/AdjustEvent;->addCallbackParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1400
    invoke-static {v0}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V

    .line 1401
    const-class v1, Lcom/yopeso/lieferando/util/TrackingUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "trackClickOrderNow: 2g7vwz"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static trackSetFavoriteHeart(Ljava/lang/String;)V
    .locals 3
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 1334
    const/4 v0, 0x0

    .line 1335
    .local v0, "event":Lcom/adjust/sdk/AdjustEvent;
    const-class v1, Lcom/yopeso/lieferando/util/TrackingUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "trackSetFavoriteHeart: t5meyd"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1338
    new-instance v0, Lcom/adjust/sdk/AdjustEvent;

    .end local v0    # "event":Lcom/adjust/sdk/AdjustEvent;
    const-string v1, "5lg1vu"

    invoke-direct {v0, v1}, Lcom/adjust/sdk/AdjustEvent;-><init>(Ljava/lang/String;)V

    .line 1339
    .restart local v0    # "event":Lcom/adjust/sdk/AdjustEvent;
    const-string v1, "actionValue"

    invoke-virtual {v0, v1, p0}, Lcom/adjust/sdk/AdjustEvent;->addCallbackParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1340
    invoke-static {v0}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V

    .line 1355
    :cond_0
    :goto_0
    return-void

    .line 1342
    :cond_1
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isTakeaway()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1345
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1349
    new-instance v0, Lcom/adjust/sdk/AdjustEvent;

    .end local v0    # "event":Lcom/adjust/sdk/AdjustEvent;
    const-string v1, "t5meyd"

    invoke-direct {v0, v1}, Lcom/adjust/sdk/AdjustEvent;-><init>(Ljava/lang/String;)V

    .line 1350
    .restart local v0    # "event":Lcom/adjust/sdk/AdjustEvent;
    const-string v1, "actionValue"

    invoke-virtual {v0, v1, p0}, Lcom/adjust/sdk/AdjustEvent;->addCallbackParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1351
    invoke-static {v0}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V

    goto :goto_0
.end method

.method public static trackSorting(Ljava/lang/String;)V
    .locals 0
    .param p0, "last_sorting_type"    # Ljava/lang/String;

    .prologue
    .line 1501
    invoke-static {p0}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackSortingKahuna(Ljava/lang/String;)V

    .line 1502
    invoke-static {p0}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackSortingAdjust(Ljava/lang/String;)V

    .line 1503
    return-void
.end method

.method public static trackSortingAdjust(Ljava/lang/String;)V
    .locals 5
    .param p0, "sorting"    # Ljava/lang/String;

    .prologue
    .line 1905
    :try_start_0
    sget-boolean v2, Lcom/yopeso/lieferando/util/TrackingUtils;->sortSelected:Z

    if-nez v2, :cond_0

    const-string v2, "none"

    invoke-static {v2, p0}, Lcom/yopeso/lieferando/util/StringUtils;->isEqualStrings(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1906
    const/4 v2, 0x0

    sput-boolean v2, Lcom/yopeso/lieferando/util/TrackingUtils;->sortSelected:Z

    .line 1910
    :goto_0
    sget-boolean v2, Lcom/yopeso/lieferando/util/TrackingUtils;->sortSelected:Z

    if-eqz v2, :cond_1

    const-string v2, "none"

    invoke-static {v2, p0}, Lcom/yopeso/lieferando/util/StringUtils;->isEqualStrings(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1912
    const/4 v2, 0x0

    sput-boolean v2, Lcom/yopeso/lieferando/util/TrackingUtils;->sortSelected:Z

    .line 1952
    :goto_1
    return-void

    .line 1908
    :cond_0
    const/4 v2, 0x1

    sput-boolean v2, Lcom/yopeso/lieferando/util/TrackingUtils;->sortSelected:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1949
    :catch_0
    move-exception v0

    .line 1950
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1917
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v1, 0x0

    .line 1918
    .local v1, "event":Lcom/adjust/sdk/AdjustEvent;
    :try_start_1
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1919
    new-instance v1, Lcom/adjust/sdk/AdjustEvent;

    .end local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    const-string v2, "4gzp31"

    invoke-direct {v1, v2}, Lcom/adjust/sdk/AdjustEvent;-><init>(Ljava/lang/String;)V

    .line 1920
    .restart local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    const-string v2, "actionValue"

    invoke-virtual {v1, v2, p0}, Lcom/adjust/sdk/AdjustEvent;->addCallbackParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1921
    invoke-static {v1}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V

    .line 1945
    :cond_2
    :goto_2
    const-class v2, Lcom/yopeso/lieferando/util/TrackingUtils;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1946
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Adjust->trackSortingAdjust:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1945
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1926
    :cond_3
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/yopeso/lieferando/net/config/IConfig;->isTakeaway()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1932
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1935
    new-instance v1, Lcom/adjust/sdk/AdjustEvent;

    .end local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    const-string v2, "i4qxyw"

    invoke-direct {v1, v2}, Lcom/adjust/sdk/AdjustEvent;-><init>(Ljava/lang/String;)V

    .line 1936
    .restart local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    const-string v2, "actionValue"

    invoke-virtual {v1, v2, p0}, Lcom/adjust/sdk/AdjustEvent;->addCallbackParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1938
    invoke-static {v1}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public static trackSortingKahuna(Ljava/lang/String;)V
    .locals 4
    .param p0, "last_sorting_type"    # Ljava/lang/String;

    .prologue
    .line 1490
    sget-boolean v1, Lcom/yopeso/lieferando/util/TrackingUtils;->enableKahuna:Z

    if-eqz v1, :cond_0

    .line 1491
    const-string v1, "sort"

    invoke-static {v1}, Lcom/kahuna/sdk/KahunaAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 1492
    const-class v1, Lcom/yopeso/lieferando/LieferandoApplication;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Kahuna sortKahuna +:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1493
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1492
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1495
    .local v0, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "last_sorting_type"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1496
    invoke-static {v0}, Lcom/kahuna/sdk/KahunaAnalytics;->setUserAttributes(Ljava/util/Map;)V

    .line 1498
    .end local v0    # "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method public static trackStampCollect(I)V
    .locals 6
    .param p0, "restaurantID"    # I

    .prologue
    .line 1955
    const/4 v1, 0x0

    .line 1959
    .local v1, "event":Lcom/adjust/sdk/AdjustEvent;
    :try_start_0
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v3

    invoke-interface {v3}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1960
    new-instance v2, Lcom/adjust/sdk/AdjustEvent;

    const-string v3, "zfgms5"

    invoke-direct {v2, v3}, Lcom/adjust/sdk/AdjustEvent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1961
    .end local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    .local v2, "event":Lcom/adjust/sdk/AdjustEvent;
    :try_start_1
    const-string v3, "actionValue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/adjust/sdk/AdjustEvent;->addCallbackParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1962
    invoke-static {v2}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V

    .line 1963
    const-class v3, Lcom/yopeso/lieferando/util/TrackingUtils;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "trackStamps:zfgms5"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 1993
    .end local v2    # "event":Lcom/adjust/sdk/AdjustEvent;
    .restart local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    :cond_0
    :goto_0
    return-void

    .line 1967
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v3

    invoke-interface {v3}, Lcom/yopeso/lieferando/net/config/IConfig;->isTakeaway()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1973
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v3

    invoke-interface {v3}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1976
    new-instance v2, Lcom/adjust/sdk/AdjustEvent;

    const-string v3, "vdsysv"

    invoke-direct {v2, v3}, Lcom/adjust/sdk/AdjustEvent;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1977
    .end local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    .restart local v2    # "event":Lcom/adjust/sdk/AdjustEvent;
    :try_start_3
    const-string v3, "actionValue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/adjust/sdk/AdjustEvent;->addCallbackParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1978
    invoke-static {v2}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V

    .line 1979
    const-class v3, Lcom/yopeso/lieferando/util/TrackingUtils;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "trackStamps:vdsysv"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object v1, v2

    .line 1990
    .end local v2    # "event":Lcom/adjust/sdk/AdjustEvent;
    .restart local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    goto :goto_0

    :catch_0
    move-exception v0

    .line 1991
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1990
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    .restart local v2    # "event":Lcom/adjust/sdk/AdjustEvent;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "event":Lcom/adjust/sdk/AdjustEvent;
    .restart local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    goto :goto_1
.end method

.method public static trackStampRedeem()V
    .locals 2

    .prologue
    .line 1999
    :try_start_0
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2000
    const-string v1, "stamp"

    invoke-static {v1}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackRedeem(Ljava/lang/String;)V

    .line 2026
    .local v0, "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .line 2002
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isTakeaway()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2008
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2017
    const-string v1, "stamp"

    invoke-static {v1}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackRedeem(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2023
    :catch_0
    move-exception v0

    .line 2024
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static trackView(Ljava/lang/String;)V
    .locals 5
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 2030
    const/4 v1, 0x0

    .line 2031
    .local v1, "event":Lcom/adjust/sdk/AdjustEvent;
    :try_start_0
    const-class v3, Lcom/yopeso/lieferando/util/TrackingUtils;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "trackView:gogz77"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2032
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v3

    invoke-interface {v3}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2033
    new-instance v2, Lcom/adjust/sdk/AdjustEvent;

    const-string v3, "5vci57"

    invoke-direct {v2, v3}, Lcom/adjust/sdk/AdjustEvent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2034
    .end local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    .local v2, "event":Lcom/adjust/sdk/AdjustEvent;
    :try_start_1
    const-string v3, "actionValue"

    invoke-virtual {v2, v3, p0}, Lcom/adjust/sdk/AdjustEvent;->addCallbackParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2035
    invoke-static {v2}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2062
    .end local v2    # "event":Lcom/adjust/sdk/AdjustEvent;
    :cond_0
    :goto_0
    return-void

    .line 2037
    .restart local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v3

    invoke-interface {v3}, Lcom/yopeso/lieferando/net/config/IConfig;->isTakeaway()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2042
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v3

    invoke-interface {v3}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2052
    new-instance v2, Lcom/adjust/sdk/AdjustEvent;

    const-string v3, "gogz77"

    invoke-direct {v2, v3}, Lcom/adjust/sdk/AdjustEvent;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2053
    .end local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    .restart local v2    # "event":Lcom/adjust/sdk/AdjustEvent;
    :try_start_3
    const-string v3, "actionValue"

    invoke-virtual {v2, v3, p0}, Lcom/adjust/sdk/AdjustEvent;->addCallbackParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2054
    invoke-static {v2}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 2059
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 2060
    .end local v2    # "event":Lcom/adjust/sdk/AdjustEvent;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v1    # "event":Lcom/adjust/sdk/AdjustEvent;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2059
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static trackViewAccount()V
    .locals 3

    .prologue
    .line 2068
    :try_start_0
    const-class v1, Lcom/yopeso/lieferando/util/TrackingUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "trackViewAccount"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2069
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2070
    const-string v1, "account"

    invoke-static {v1}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackView(Ljava/lang/String;)V

    .line 2091
    .local v0, "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .line 2073
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isTakeaway()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2079
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2082
    const-string v1, "account"

    invoke-static {v1}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackView(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2088
    :catch_0
    move-exception v0

    .line 2089
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static trackViewAddress()V
    .locals 3

    .prologue
    .line 2097
    :try_start_0
    const-class v1, Lcom/yopeso/lieferando/util/TrackingUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "trackViewAddress"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2098
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2099
    const-string v1, "adresses"

    invoke-static {v1}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackView(Ljava/lang/String;)V

    .line 2124
    .local v0, "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .line 2101
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isTakeaway()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2107
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2112
    const-string v1, "adresses"

    invoke-static {v1}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackView(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2121
    :catch_0
    move-exception v0

    .line 2122
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static trackViewBonusShop()V
    .locals 3

    .prologue
    .line 2130
    :try_start_0
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2131
    const-string v1, "bonusShop"

    invoke-static {v1}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackView(Ljava/lang/String;)V

    .line 2158
    .local v0, "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .line 2134
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isTakeaway()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2140
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2145
    const-string v1, "bonusShop"

    invoke-static {v1}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackView(Ljava/lang/String;)V

    .line 2148
    const-class v1, Lcom/yopeso/lieferando/util/TrackingUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2149
    const-string v2, "trackViewBonusShop"

    .line 2148
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2155
    :catch_0
    move-exception v0

    .line 2156
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static trackViewCart()V
    .locals 3

    .prologue
    .line 610
    :try_start_0
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 611
    const-string v1, "basket"

    invoke-static {v1}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackView(Ljava/lang/String;)V

    .line 632
    .local v0, "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .line 613
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isTakeaway()Z

    move-result v1

    if-nez v1, :cond_0

    .line 618
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 619
    new-instance v1, Lcom/adjust/sdk/AdjustEvent;

    .line 620
    const-string v2, "yyjbmz"

    .line 619
    invoke-direct {v1, v2}, Lcom/adjust/sdk/AdjustEvent;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 629
    :catch_0
    move-exception v0

    .line 630
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 623
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    const-string v1, "basket"

    invoke-static {v1}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackView(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static trackViewFavourites()V
    .locals 3

    .prologue
    .line 2164
    :try_start_0
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2165
    const-string v1, "favorites"

    invoke-static {v1}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackView(Ljava/lang/String;)V

    .line 2192
    .local v0, "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .line 2168
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isTakeaway()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2174
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2177
    const-string v1, "favorites"

    invoke-static {v1}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackView(Ljava/lang/String;)V

    .line 2182
    const-class v1, Lcom/yopeso/lieferando/util/TrackingUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2183
    const-string v2, "trackViewFavourites"

    .line 2182
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2189
    :catch_0
    move-exception v0

    .line 2190
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static trackViewFidelity()V
    .locals 3

    .prologue
    .line 2198
    :try_start_0
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2199
    const-string v1, "fidelityPoints"

    invoke-static {v1}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackView(Ljava/lang/String;)V

    .line 2226
    .local v0, "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .line 2202
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isTakeaway()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2208
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2211
    const-string v1, "fidelityPoints"

    invoke-static {v1}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackView(Ljava/lang/String;)V

    .line 2216
    const-class v1, Lcom/yopeso/lieferando/util/TrackingUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2217
    const-string v2, "trackViewFidelity"

    .line 2216
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2223
    :catch_0
    move-exception v0

    .line 2224
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static trackViewOrders()V
    .locals 3

    .prologue
    .line 2232
    :try_start_0
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2233
    const-string v1, "orders"

    invoke-static {v1}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackView(Ljava/lang/String;)V

    .line 2259
    .local v0, "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .line 2236
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isTakeaway()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2242
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2245
    const-string v1, "orders"

    invoke-static {v1}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackView(Ljava/lang/String;)V

    .line 2250
    const-class v1, Lcom/yopeso/lieferando/util/TrackingUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "trackViewOrders"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2256
    :catch_0
    move-exception v0

    .line 2257
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static trackViewStamps()V
    .locals 3

    .prologue
    .line 2265
    :try_start_0
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2266
    const-string v1, "stampcards"

    invoke-static {v1}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackView(Ljava/lang/String;)V

    .line 2292
    .local v0, "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .line 2269
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isTakeaway()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2275
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2278
    const-string v1, "stampcards"

    invoke-static {v1}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackView(Ljava/lang/String;)V

    .line 2283
    const-class v1, Lcom/yopeso/lieferando/util/TrackingUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "trackViewStamps"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2289
    :catch_0
    move-exception v0

    .line 2290
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static trackVoucherRedemptionKahuna(Ljava/lang/String;Z)V
    .locals 2
    .param p0, "voucherName"    # Ljava/lang/String;
    .param p1, "success"    # Z

    .prologue
    .line 1479
    sget-boolean v0, Lcom/yopeso/lieferando/util/TrackingUtils;->enableKahuna:Z

    if-eqz v0, :cond_0

    .line 1480
    if-eqz p1, :cond_1

    .line 1481
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "voucher_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1482
    const-string v1, "_success"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1481
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kahuna/sdk/KahunaAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 1487
    :cond_0
    :goto_0
    return-void

    .line 1484
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "voucher_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_fail"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kahuna/sdk/KahunaAnalytics;->trackEvent(Ljava/lang/String;)V

    goto :goto_0
.end method
