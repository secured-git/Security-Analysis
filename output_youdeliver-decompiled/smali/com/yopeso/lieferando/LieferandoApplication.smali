.class public abstract Lcom/yopeso/lieferando/LieferandoApplication;
.super Landroid/app/Application;
.source "LieferandoApplication.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "UseSparseArrays"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yopeso/lieferando/LieferandoApplication$PrintersListener;
    }
.end annotation


# static fields
.field private static final CART_DATA:Ljava/lang/String; = "key_cart_data"

.field private static final CONFIG_EXPIRATION:J = 0x9a7ec800L

.field private static final LAST_SYNC:Ljava/lang/String; = "key_last_sync"

.field private static final SETTINGS_DATA:Ljava/lang/String; = "key_settings_data_new"

.field private static final SYNC_INTERVAL:J = 0x2932e00L

.field private static mSettingModel:Lcom/yopeso/lieferando/model/SettingsContent;

.field private static sContext:Landroid/content/Context;

.field public static sCurrentDate:Ljava/util/Date;

.field private static sImageManager:Lcom/novoda/imageloader/core/ImageManager;

.field private static sTagFactory:Lcom/novoda/imageloader/core/model/ImageTagFactory;

.field private static sTagFactoryNoAnim:Lcom/novoda/imageloader/core/model/ImageTagFactory;

.field private static sTagFactoryUser:Lcom/novoda/imageloader/core/model/ImageTagFactory;

.field public static sUserLocation:Landroid/location/Location;


# instance fields
.field public final CALLBACK_ON_CREATE:I

.field public final CALLBACK_ON_RESUME:I

.field private final MAX_ACTIVITY_TRANSITION_TIME_MS:J

.field private mActivityTransitionTimer:Ljava/util/Timer;

.field private mActivityTransitionTimerTask:Ljava/util/TimerTask;

.field private mAreas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/LocationSuggestion;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mPrinters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestQueue:Lcom/android/volley/RequestQueue;

.field private mShoppingCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

.field final mStatusChecker:Ljava/lang/Runnable;

.field public wasInBackground:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sput-object v0, Lcom/yopeso/lieferando/LieferandoApplication;->sCurrentDate:Ljava/util/Date;

    .line 109
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 79
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 90
    new-instance v0, Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-direct {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/LieferandoApplication;->mShoppingCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/LieferandoApplication;->mPrinters:Ljava/util/Map;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/LieferandoApplication;->mAreas:Ljava/util/ArrayList;

    .line 103
    iput-boolean v2, p0, Lcom/yopeso/lieferando/LieferandoApplication;->wasInBackground:Z

    .line 104
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/yopeso/lieferando/LieferandoApplication;->MAX_ACTIVITY_TRANSITION_TIME_MS:J

    .line 113
    iput v2, p0, Lcom/yopeso/lieferando/LieferandoApplication;->CALLBACK_ON_CREATE:I

    .line 114
    const/4 v0, 0x2

    iput v0, p0, Lcom/yopeso/lieferando/LieferandoApplication;->CALLBACK_ON_RESUME:I

    .line 253
    new-instance v0, Lcom/yopeso/lieferando/LieferandoApplication$1;

    invoke-direct {v0, p0}, Lcom/yopeso/lieferando/LieferandoApplication$1;-><init>(Lcom/yopeso/lieferando/LieferandoApplication;)V

    iput-object v0, p0, Lcom/yopeso/lieferando/LieferandoApplication;->mStatusChecker:Ljava/lang/Runnable;

    .line 79
    return-void
.end method

.method static synthetic access$0(Lcom/yopeso/lieferando/LieferandoApplication;)Lcom/android/volley/RequestQueue;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/yopeso/lieferando/LieferandoApplication;->mRequestQueue:Lcom/android/volley/RequestQueue;

    return-object v0
.end method

.method static synthetic access$1(Lcom/yopeso/lieferando/LieferandoApplication;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/yopeso/lieferando/LieferandoApplication;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static appendLog(Ljava/lang/String;)V
    .locals 5
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 372
    new-instance v2, Ljava/io/File;

    const-string v3, "sdcard/log.txt"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 373
    .local v2, "logFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 375
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    :cond_0
    :goto_0
    :try_start_1
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v0, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 383
    .local v0, "buf":Ljava/io/BufferedWriter;
    invoke-virtual {v0, p0}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 384
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    .line 385
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 389
    .end local v0    # "buf":Ljava/io/BufferedWriter;
    :goto_1
    return-void

    .line 376
    :catch_0
    move-exception v1

    .line 377
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 386
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 387
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getAppContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 359
    sget-object v0, Lcom/yopeso/lieferando/LieferandoApplication;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method public static final getImageLoader()Lcom/novoda/imageloader/core/loader/Loader;
    .locals 1

    .prologue
    .line 412
    sget-object v0, Lcom/yopeso/lieferando/LieferandoApplication;->sImageManager:Lcom/novoda/imageloader/core/ImageManager;

    invoke-virtual {v0}, Lcom/novoda/imageloader/core/ImageManager;->getLoader()Lcom/novoda/imageloader/core/loader/Loader;

    move-result-object v0

    return-object v0
.end method

.method public static final getImageManager()Lcom/novoda/imageloader/core/ImageManager;
    .locals 1

    .prologue
    .line 408
    sget-object v0, Lcom/yopeso/lieferando/LieferandoApplication;->sImageManager:Lcom/novoda/imageloader/core/ImageManager;

    return-object v0
.end method

.method public static getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;
    .locals 1

    .prologue
    .line 290
    sget-object v0, Lcom/yopeso/lieferando/LieferandoApplication;->mSettingModel:Lcom/yopeso/lieferando/model/SettingsContent;

    return-object v0
.end method

.method public static final getTagFactory()Lcom/novoda/imageloader/core/model/ImageTagFactory;
    .locals 1

    .prologue
    .line 416
    sget-object v0, Lcom/yopeso/lieferando/LieferandoApplication;->sTagFactory:Lcom/novoda/imageloader/core/model/ImageTagFactory;

    return-object v0
.end method

.method public static final getTagFactoryNoAnim()Lcom/novoda/imageloader/core/model/ImageTagFactory;
    .locals 1

    .prologue
    .line 420
    sget-object v0, Lcom/yopeso/lieferando/LieferandoApplication;->sTagFactoryNoAnim:Lcom/novoda/imageloader/core/model/ImageTagFactory;

    return-object v0
.end method

.method public static final getTagFactoryUserPhoto()Lcom/novoda/imageloader/core/model/ImageTagFactory;
    .locals 1

    .prologue
    .line 424
    sget-object v0, Lcom/yopeso/lieferando/LieferandoApplication;->sTagFactoryUser:Lcom/novoda/imageloader/core/model/ImageTagFactory;

    return-object v0
.end method


# virtual methods
.method public getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/yopeso/lieferando/LieferandoApplication;->mShoppingCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    return-object v0
.end method

.method protected abstract getConfiguration()Lcom/yopeso/lieferando/net/config/IConfig;
.end method

.method public getLocationURL(I)Ljava/lang/String;
    .locals 3
    .param p1, "location_id"    # I

    .prologue
    .line 432
    iget-object v1, p0, Lcom/yopeso/lieferando/LieferandoApplication;->mAreas:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 433
    iget-object v1, p0, Lcom/yopeso/lieferando/LieferandoApplication;->mAreas:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 439
    :cond_1
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 433
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/LocationSuggestion;

    .line 434
    .local v0, "ls":Lcom/yopeso/lieferando/model/LocationSuggestion;
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getCityId()I

    move-result v2

    if-ne p1, v2, :cond_0

    .line 435
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getLocationUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getPrinters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 320
    iget-object v0, p0, Lcom/yopeso/lieferando/LieferandoApplication;->mPrinters:Ljava/util/Map;

    return-object v0
.end method

.method public getmAreas()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/LocationSuggestion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 428
    iget-object v0, p0, Lcom/yopeso/lieferando/LieferandoApplication;->mAreas:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isConfigDataExpired()Z
    .locals 8

    .prologue
    .line 363
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 364
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "key_last_sync"

    const-wide/16 v4, 0x1

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 365
    .local v0, "lastSync":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    const-wide v6, 0x9a7ec800L

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isPrinterOn(IZ)Z
    .locals 3
    .param p1, "id"    # I
    .param p2, "hasSms"    # Z

    .prologue
    const/4 v0, 0x1

    .line 324
    if-eqz p2, :cond_0

    .line 325
    iget-object v1, p0, Lcom/yopeso/lieferando/LieferandoApplication;->mPrinters:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 326
    iget-object v0, p0, Lcom/yopeso/lieferando/LieferandoApplication;->mPrinters:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 331
    :cond_0
    return v0
.end method

.method public isSyncRequired()Z
    .locals 8

    .prologue
    .line 342
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 343
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "key_last_sync"

    const-wide/16 v4, 0x1

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 344
    .local v0, "lastSync":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    const-wide/32 v6, 0x2932e00

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 345
    const/4 v3, 0x1

    .line 347
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 118
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 119
    invoke-virtual {p0}, Lcom/yopeso/lieferando/LieferandoApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    sput-object v8, Lcom/yopeso/lieferando/LieferandoApplication;->sContext:Landroid/content/Context;

    .line 121
    invoke-virtual {p0}, Lcom/yopeso/lieferando/LieferandoApplication;->getConfiguration()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v8

    invoke-static {v8}, Lcom/yopeso/lieferando/net/config/AppConfig;->setup(Lcom/yopeso/lieferando/net/config/IConfig;)V

    .line 123
    invoke-virtual {p0}, Lcom/yopeso/lieferando/LieferandoApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/yopeso/lieferando/util/UserStore;->initWithContext(Landroid/content/Context;)V

    .line 139
    invoke-static {p0}, Lcom/yopeso/lieferando/util/TrackingUtils;->startAppKahuna(Landroid/content/Context;)V

    .line 143
    sget v8, Lcom/yopeso/lieferando/R$string;->adjust_token:I

    invoke-virtual {p0, v8}, Lcom/yopeso/lieferando/LieferandoApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "appToken":Ljava/lang/String;
    const/4 v4, 0x0

    .line 145
    .local v4, "environment":Ljava/lang/String;
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v8

    invoke-interface {v8}, Lcom/yopeso/lieferando/net/config/IConfig;->isLive()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 146
    const-string v4, "production"

    .line 151
    :goto_0
    new-instance v2, Lcom/adjust/sdk/AdjustConfig;

    invoke-direct {v2, p0, v0, v4}, Lcom/adjust/sdk/AdjustConfig;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .local v2, "config":Lcom/adjust/sdk/AdjustConfig;
    new-instance v8, Lcom/yopeso/lieferando/LieferandoApplication$2;

    invoke-direct {v8, p0}, Lcom/yopeso/lieferando/LieferandoApplication$2;-><init>(Lcom/yopeso/lieferando/LieferandoApplication;)V

    invoke-virtual {v2, v8}, Lcom/adjust/sdk/AdjustConfig;->setOnAttributionChangedListener(Lcom/adjust/sdk/OnAttributionChangedListener;)V

    .line 187
    sget-object v8, Lcom/adjust/sdk/LogLevel;->INFO:Lcom/adjust/sdk/LogLevel;

    invoke-virtual {v2, v8}, Lcom/adjust/sdk/AdjustConfig;->setLogLevel(Lcom/adjust/sdk/LogLevel;)V

    .line 188
    invoke-static {v2}, Lcom/adjust/sdk/Adjust;->onCreate(Lcom/adjust/sdk/AdjustConfig;)V

    .line 190
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v8

    invoke-virtual {p0}, Lcom/yopeso/lieferando/LieferandoApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/yopeso/lieferando/R$array;->restaurant_filters_array:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->populateFilters([Ljava/lang/String;)V

    .line 191
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v8

    invoke-virtual {p0}, Lcom/yopeso/lieferando/LieferandoApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/yopeso/lieferando/R$array;->restaurant_filters_array_static:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->populateFilters_STATIC([Ljava/lang/String;)V

    .line 193
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 194
    .local v7, "sharedPrefs":Landroid/content/SharedPreferences;
    const-string v8, "key_settings_data_new"

    invoke-interface {v7, v8, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 195
    .local v6, "settingsSerialized":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 197
    :try_start_0
    invoke-static {v6}, Lcom/yopeso/lieferando/util/SerializeUtils;->fromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/yopeso/lieferando/model/SettingsContent;

    sput-object v8, Lcom/yopeso/lieferando/LieferandoApplication;->mSettingModel:Lcom/yopeso/lieferando/model/SettingsContent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :cond_0
    :goto_1
    const-string v8, "key_cart_data"

    invoke-interface {v7, v8, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, "cartSerialized":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 206
    :try_start_1
    invoke-static {v1}, Lcom/yopeso/lieferando/util/SerializeUtils;->fromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    iput-object v8, p0, Lcom/yopeso/lieferando/LieferandoApplication;->mShoppingCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 212
    :cond_1
    :goto_2
    new-instance v8, Lcom/novoda/imageloader/core/LoaderSettings$SettingsBuilder;

    invoke-direct {v8}, Lcom/novoda/imageloader/core/LoaderSettings$SettingsBuilder;-><init>()V

    invoke-virtual {v8, v11}, Lcom/novoda/imageloader/core/LoaderSettings$SettingsBuilder;->withDisconnectOnEveryCall(Z)Lcom/novoda/imageloader/core/LoaderSettings$SettingsBuilder;

    move-result-object v8

    new-instance v9, Lcom/novoda/imageloader/core/cache/LruBitmapCache;

    invoke-direct {v9, p0}, Lcom/novoda/imageloader/core/cache/LruBitmapCache;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v9}, Lcom/novoda/imageloader/core/LoaderSettings$SettingsBuilder;->withCacheManager(Lcom/novoda/imageloader/core/cache/CacheManager;)Lcom/novoda/imageloader/core/LoaderSettings$SettingsBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Lcom/novoda/imageloader/core/LoaderSettings$SettingsBuilder;->withAsyncTasks(Z)Lcom/novoda/imageloader/core/LoaderSettings$SettingsBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Lcom/novoda/imageloader/core/LoaderSettings$SettingsBuilder;->withoutResizing(Z)Lcom/novoda/imageloader/core/LoaderSettings$SettingsBuilder;

    move-result-object v8

    .line 213
    invoke-virtual {v8, v11}, Lcom/novoda/imageloader/core/LoaderSettings$SettingsBuilder;->withDisconnectOnEveryCall(Z)Lcom/novoda/imageloader/core/LoaderSettings$SettingsBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Lcom/novoda/imageloader/core/LoaderSettings$SettingsBuilder;->build(Landroid/content/Context;)Lcom/novoda/imageloader/core/LoaderSettings;

    move-result-object v5

    .line 220
    .local v5, "loaderSettings":Lcom/novoda/imageloader/core/LoaderSettings;
    new-instance v8, Lcom/novoda/imageloader/core/ImageManager;

    invoke-direct {v8, p0, v5}, Lcom/novoda/imageloader/core/ImageManager;-><init>(Landroid/content/Context;Lcom/novoda/imageloader/core/LoaderSettings;)V

    sput-object v8, Lcom/yopeso/lieferando/LieferandoApplication;->sImageManager:Lcom/novoda/imageloader/core/ImageManager;

    .line 221
    sget v8, Lcom/yopeso/lieferando/R$drawable;->image_loader_preview:I

    invoke-static {p0, v8}, Lcom/novoda/imageloader/core/model/ImageTagFactory;->newInstance(Landroid/content/Context;I)Lcom/novoda/imageloader/core/model/ImageTagFactory;

    move-result-object v8

    sput-object v8, Lcom/yopeso/lieferando/LieferandoApplication;->sTagFactory:Lcom/novoda/imageloader/core/model/ImageTagFactory;

    .line 222
    sget v8, Lcom/yopeso/lieferando/R$drawable;->image_loader_preview:I

    invoke-static {p0, v8}, Lcom/novoda/imageloader/core/model/ImageTagFactory;->newInstance(Landroid/content/Context;I)Lcom/novoda/imageloader/core/model/ImageTagFactory;

    move-result-object v8

    sput-object v8, Lcom/yopeso/lieferando/LieferandoApplication;->sTagFactoryNoAnim:Lcom/novoda/imageloader/core/model/ImageTagFactory;

    .line 223
    sget v8, Lcom/yopeso/lieferando/R$drawable;->no_user_photo:I

    invoke-static {p0, v8}, Lcom/novoda/imageloader/core/model/ImageTagFactory;->newInstance(Landroid/content/Context;I)Lcom/novoda/imageloader/core/model/ImageTagFactory;

    move-result-object v8

    sput-object v8, Lcom/yopeso/lieferando/LieferandoApplication;->sTagFactoryUser:Lcom/novoda/imageloader/core/model/ImageTagFactory;

    .line 224
    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    iput-object v8, p0, Lcom/yopeso/lieferando/LieferandoApplication;->mHandler:Landroid/os/Handler;

    .line 225
    invoke-static {p0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v8

    iput-object v8, p0, Lcom/yopeso/lieferando/LieferandoApplication;->mRequestQueue:Lcom/android/volley/RequestQueue;

    .line 227
    return-void

    .line 149
    .end local v1    # "cartSerialized":Ljava/lang/String;
    .end local v2    # "config":Lcom/adjust/sdk/AdjustConfig;
    .end local v5    # "loaderSettings":Lcom/novoda/imageloader/core/LoaderSettings;
    .end local v6    # "settingsSerialized":Ljava/lang/String;
    .end local v7    # "sharedPrefs":Landroid/content/SharedPreferences;
    :cond_2
    const-string v4, "sandbox"

    goto/16 :goto_0

    .line 198
    .restart local v2    # "config":Lcom/adjust/sdk/AdjustConfig;
    .restart local v6    # "settingsSerialized":Ljava/lang/String;
    .restart local v7    # "sharedPrefs":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v3

    .line 199
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 207
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "cartSerialized":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 208
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public setPrinters(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 316
    .local p1, "printers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    iput-object p1, p0, Lcom/yopeso/lieferando/LieferandoApplication;->mPrinters:Ljava/util/Map;

    .line 317
    return-void
.end method

.method public setSettingModel(Lcom/yopeso/lieferando/model/SettingsContent;)V
    .locals 8
    .param p1, "_settingModel"    # Lcom/yopeso/lieferando/model/SettingsContent;

    .prologue
    .line 294
    sput-object p1, Lcom/yopeso/lieferando/LieferandoApplication;->mSettingModel:Lcom/yopeso/lieferando/model/SettingsContent;

    .line 300
    invoke-virtual {p0}, Lcom/yopeso/lieferando/LieferandoApplication;->getConfiguration()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v3

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/SettingsContent;->getmCdnURL()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/yopeso/lieferando/net/config/IConfig;->setCDN_URL(Ljava/lang/String;)V

    .line 301
    invoke-virtual {p0}, Lcom/yopeso/lieferando/LieferandoApplication;->getConfiguration()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v3

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/SettingsContent;->getmServerURL()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/yopeso/lieferando/net/config/IConfig;->setSERVER_URL(Ljava/lang/String;)V

    .line 302
    invoke-virtual {p0}, Lcom/yopeso/lieferando/LieferandoApplication;->getConfiguration()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v3

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/SettingsContent;->getmImage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/yopeso/lieferando/net/config/IConfig;->setIMAGE_URL(Ljava/lang/String;)V

    .line 306
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 308
    .local v1, "prefs":Landroid/content/SharedPreferences;
    :try_start_0
    invoke-static {p1}, Lcom/yopeso/lieferando/util/SerializeUtils;->toString(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v2

    .line 309
    .local v2, "serializedData":Ljava/lang/String;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "key_settings_data_new"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "key_last_sync"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-interface {v3, v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    .end local v2    # "serializedData":Ljava/lang/String;
    :goto_0
    return-void

    .line 310
    :catch_0
    move-exception v0

    .line 311
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public setmAreas(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/LocationSuggestion;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 443
    .local p1, "mAreas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/LocationSuggestion;>;"
    iput-object p1, p0, Lcom/yopeso/lieferando/LieferandoApplication;->mAreas:Ljava/util/ArrayList;

    .line 444
    return-void
.end method

.method public shouldSaveData()V
    .locals 5

    .prologue
    .line 398
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 400
    .local v1, "prefs":Landroid/content/SharedPreferences;
    :try_start_0
    iget-object v3, p0, Lcom/yopeso/lieferando/LieferandoApplication;->mShoppingCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-static {v3}, Lcom/yopeso/lieferando/util/SerializeUtils;->toString(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v2

    .line 401
    .local v2, "serializedData":Ljava/lang/String;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "key_cart_data"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    .end local v2    # "serializedData":Ljava/lang/String;
    :goto_0
    return-void

    .line 402
    :catch_0
    move-exception v0

    .line 403
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public startActivityTransitionTimer()V
    .locals 4

    .prologue
    .line 230
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/LieferandoApplication;->mActivityTransitionTimer:Ljava/util/Timer;

    .line 231
    new-instance v0, Lcom/yopeso/lieferando/LieferandoApplication$3;

    invoke-direct {v0, p0}, Lcom/yopeso/lieferando/LieferandoApplication$3;-><init>(Lcom/yopeso/lieferando/LieferandoApplication;)V

    iput-object v0, p0, Lcom/yopeso/lieferando/LieferandoApplication;->mActivityTransitionTimerTask:Ljava/util/TimerTask;

    .line 238
    iget-object v0, p0, Lcom/yopeso/lieferando/LieferandoApplication;->mActivityTransitionTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/yopeso/lieferando/LieferandoApplication;->mActivityTransitionTimerTask:Ljava/util/TimerTask;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 239
    return-void
.end method

.method public startSyncPrinters()V
    .locals 3

    .prologue
    .line 264
    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/SettingsContent;->getmCdnURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v1

    if-nez v1, :cond_0

    .line 265
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/SettingsContent;->getmCdnURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/printer/status.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, "url":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 267
    iget-object v1, p0, Lcom/yopeso/lieferando/LieferandoApplication;->mStatusChecker:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 270
    .end local v0    # "url":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public stopActivityTransitionTimer()V
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/yopeso/lieferando/LieferandoApplication;->mActivityTransitionTimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/yopeso/lieferando/LieferandoApplication;->mActivityTransitionTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/LieferandoApplication;->mActivityTransitionTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 247
    iget-object v0, p0, Lcom/yopeso/lieferando/LieferandoApplication;->mActivityTransitionTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 250
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yopeso/lieferando/LieferandoApplication;->wasInBackground:Z

    .line 251
    return-void
.end method

.method public stopService()V
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/yopeso/lieferando/LieferandoApplication;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yopeso/lieferando/LieferandoApplication;->mStatusChecker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 274
    return-void
.end method
