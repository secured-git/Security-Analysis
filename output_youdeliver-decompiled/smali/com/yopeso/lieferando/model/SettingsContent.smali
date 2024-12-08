.class public Lcom/yopeso/lieferando/model/SettingsContent;
.super Ljava/lang/Object;
.source "SettingsContent.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x63b3223134465f53L


# instance fields
.field private additive_list:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "additive_list"
    .end annotation
.end field

.field private additive_list_callapizza:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "additive_list_callapizza"
    .end annotation
.end field

.field private additive_list_hallopizza:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "additive_list_hallopizza"
    .end annotation
.end field

.field private additive_list_mundfine:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "additive_list_mundfine"
    .end annotation
.end field

.field private mAds:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ads"
    .end annotation
.end field

.field private mButtonColor:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "buttonColor"
    .end annotation
.end field

.field private mCdnURL:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cdnURL"
    .end annotation
.end field

.field private mDynamicFaqHTML:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "dynamicFaqHTML"
    .end annotation
.end field

.field private mDynamicManualHTML:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "dynamicManualHTML"
    .end annotation
.end field

.field private mDynamicStartUpHTML:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "dynamicStartUpHTML"
    .end annotation
.end field

.field private mErrorCodes:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "errors"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFacebookPermission:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "facebookPermission"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFacebookWritePermission:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "facebookWritePermission"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFidelityPoints:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fidelityPoints"
    .end annotation
.end field

.field private mForceUpdate:Z

.field private mImage:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "imageURL"
    .end annotation
.end field

.field private mLatestVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "latestVersion"
    .end annotation
.end field

.field private mPayments:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mRegexp:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "regexp"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/yopeso/lieferando/model/user/Regexp;",
            ">;"
        }
    .end annotation
.end field

.field private mRestaurantsId:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "restaurantsId"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mServerURL:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "serverURL"
    .end annotation
.end field

.field private mShouldUpdate:Z

.field private mSitenotice:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sitenotice"
    .end annotation
.end field

.field private mStampCards:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "stampCards"
    .end annotation
.end field

.field private mStoreURL:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "storeURL"
    .end annotation
.end field

.field private mUpdateMessage:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "updateMessage"
    .end annotation
.end field

.field private mUpdateMessages:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "updateMessages"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVouchers:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "vouchers"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private maintenance:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "maintenance"
    .end annotation
.end field

.field private msg:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "msg"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/SettingsContent;->mPayments:Ljava/util/Map;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/SettingsContent;->mUpdateMessages:Ljava/util/List;

    .line 66
    iput-boolean v2, p0, Lcom/yopeso/lieferando/model/SettingsContent;->mForceUpdate:Z

    .line 67
    iput-boolean v2, p0, Lcom/yopeso/lieferando/model/SettingsContent;->mShouldUpdate:Z

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/SettingsContent;->mFacebookPermission:Ljava/util/List;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/SettingsContent;->mFacebookWritePermission:Ljava/util/List;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/SettingsContent;->mRegexp:Ljava/util/Map;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/SettingsContent;->mErrorCodes:Ljava/util/Map;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/SettingsContent;->mVouchers:Ljava/util/List;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/SettingsContent;->mRestaurantsId:Ljava/util/List;

    .line 106
    const-string v0, "#65b932"

    iput-object v0, p0, Lcom/yopeso/lieferando/model/SettingsContent;->mButtonColor:Ljava/lang/String;

    .line 110
    iput-object v1, p0, Lcom/yopeso/lieferando/model/SettingsContent;->additive_list:Ljava/lang/String;

    .line 112
    iput-object v1, p0, Lcom/yopeso/lieferando/model/SettingsContent;->additive_list_mundfine:Ljava/lang/String;

    .line 114
    iput-object v1, p0, Lcom/yopeso/lieferando/model/SettingsContent;->additive_list_hallopizza:Ljava/lang/String;

    .line 116
    iput-object v1, p0, Lcom/yopeso/lieferando/model/SettingsContent;->additive_list_callapizza:Ljava/lang/String;

    .line 119
    return-void
.end method


# virtual methods
.method public getAdditive_list()Ljava/lang/String;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/yopeso/lieferando/model/SettingsContent;->additive_list:Ljava/lang/String;

    return-object v0
.end method

.method public getAdditive_list_callapizza()Ljava/lang/String;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/yopeso/lieferando/model/SettingsContent;->additive_list_callapizza:Ljava/lang/String;

    return-object v0
.end method

.method public getAdditive_list_hallopizza()Ljava/lang/String;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/yopeso/lieferando/model/SettingsContent;->additive_list_hallopizza:Ljava/lang/String;

    return-object v0
.end method

.method public getAdditive_list_mundfine()Ljava/lang/String;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/yopeso/lieferando/model/SettingsContent;->additive_list_mundfine:Ljava/lang/String;

    return-object v0
.end method

.method public getDynamicButtonFilter()Landroid/graphics/PorterDuffColorFilter;
    .locals 3

    .prologue
    .line 342
    iget-object v0, p0, Lcom/yopeso/lieferando/model/SettingsContent;->mButtonColor:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 343
    const-class v0, Lcom/yopeso/lieferando/model/SettingsContent;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getDynamicButtonFilter:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/yopeso/lieferando/model/SettingsContent;->mButtonColor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    iget-object v1, p0, Lcom/yopeso/lieferando/model/SettingsContent;->mButtonColor:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 348
    :goto_0
    return-object v0

    .line 347
    :cond_0
    const-class v0, Lcom/yopeso/lieferando/model/SettingsContent;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getDynamicButtonFilter def: #65b932"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    const-string v1, "#65b932"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method

.method public getDynamicFaqHTML()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/yopeso/lieferando/model/SettingsContent;->mDynamicFaqHTML:Ljava/lang/String;

    return-object v0
.end method

.method public getDynamicManualHTML()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/yopeso/lieferando/model/SettingsContent;->mDynamicManualHTML:Ljava/lang/String;

    return-object v0
.end method

.method public getDynamicStartUpHTML()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/yopeso/lieferando/model/SettingsContent;->mDynamicStartUpHTML:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCodes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 204
    iget-object v0, p0, Lcom/yopeso/lieferando/model/SettingsContent;->mErrorCodes:Ljava/util/Map;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/yopeso/lieferando/model/SettingsContent;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getPayments()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 188
    iget-object v0, p0, Lcom/yopeso/lieferando/model/SettingsContent;->mPayments:Ljava/util/Map;

    return-object v0
.end method

.method public getReadFacebookPermissions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 192
    iget-object v0, p0, Lcom/yopeso/lieferando/model/SettingsContent;->mFacebookPermission:Ljava/util/List;

    return-object v0
.end method

.method public getRegexp()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/yopeso/lieferando/model/user/Regexp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 218
    iget-object v0, p0, Lcom/yopeso/lieferando/model/SettingsContent;->mRegexp:Ljava/util/Map;

    return-object v0
.end method

.method public getSitenotice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/yopeso/lieferando/model/SettingsContent;->mSitenotice:Ljava/lang/String;

    return-object v0
.end method

.method public getWriteFacebookPermissions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 196
    iget-object v0, p0, Lcom/yopeso/lieferando/model/SettingsContent;->mFacebookWritePermission:Ljava/util/List;

    return-object v0
.end method

.method public getmButtonColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/yopeso/lieferando/model/SettingsContent;->mButtonColor:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "#65b932"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/model/SettingsContent;->mButtonColor:Ljava/lang/String;

    goto :goto_0
.end method

.method public getmCdnURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/yopeso/lieferando/model/SettingsContent;->mCdnURL:Ljava/lang/String;

    invoke-static {v0}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/yopeso/lieferando/net/config/IConfig;->getCdnUrl()Ljava/lang/String;

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/model/SettingsContent;->mCdnURL:Ljava/lang/String;

    return-object v0
.end method

.method public getmImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/yopeso/lieferando/model/SettingsContent;->mImage:Ljava/lang/String;

    return-object v0
.end method

.method public getmLatestVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/yopeso/lieferando/model/SettingsContent;->mLatestVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getmRestaurantIdsString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 290
    const-string v0, ","

    iget-object v1, p0, Lcom/yopeso/lieferando/model/SettingsContent;->mRestaurantsId:Ljava/util/List;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getmRestaurantsId()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 287
    iget-object v0, p0, Lcom/yopeso/lieferando/model/SettingsContent;->mRestaurantsId:Ljava/util/List;

    return-object v0
.end method

.method public getmServerURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/yopeso/lieferando/model/SettingsContent;->mServerURL:Ljava/lang/String;

    invoke-static {v0}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/yopeso/lieferando/net/config/IConfig;->getServerUrl()Ljava/lang/String;

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/model/SettingsContent;->mServerURL:Ljava/lang/String;

    return-object v0
.end method

.method public getmStoreURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/yopeso/lieferando/model/SettingsContent;->mStoreURL:Ljava/lang/String;

    return-object v0
.end method

.method public getmUpdateMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/yopeso/lieferando/model/SettingsContent;->mUpdateMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getmUpdateMessages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 250
    iget-object v0, p0, Lcom/yopeso/lieferando/model/SettingsContent;->mUpdateMessages:Ljava/util/List;

    return-object v0
.end method

.method public getmVouchers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 280
    iget-object v0, p0, Lcom/yopeso/lieferando/model/SettingsContent;->mVouchers:Ljava/util/List;

    return-object v0
.end method

.method public isAdsActive()Z
    .locals 2

    .prologue
    .line 129
    const-string v0, "inactive"

    iget-object v1, p0, Lcom/yopeso/lieferando/model/SettingsContent;->mAds:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isCardEnabled()Z
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/yopeso/lieferando/model/SettingsContent;->mPayments:Ljava/util/Map;

    const-string v1, "credit"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yopeso/lieferando/model/SettingsContent;->mPayments:Ljava/util/Map;

    const-string v1, "credit"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCashEnabled()Z
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/yopeso/lieferando/model/SettingsContent;->mPayments:Ljava/util/Map;

    const-string v1, "bar"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yopeso/lieferando/model/SettingsContent;->mPayments:Ljava/util/Map;

    const-string v1, "bar"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClicknBuyEnabled()Z
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/yopeso/lieferando/model/SettingsContent;->mPayments:Ljava/util/Map;

    const-string v1, "clickandbuy"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yopeso/lieferando/model/SettingsContent;->mPayments:Ljava/util/Map;

    const-string v1, "clickandbuy"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isECEnabled()Z
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/yopeso/lieferando/model/SettingsContent;->mPayments:Ljava/util/Map;

    const-string v1, "ec"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yopeso/lieferando/model/SettingsContent;->mPayments:Ljava/util/Map;

    const-string v1, "ec"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEbankingEnabled()Z
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/yopeso/lieferando/model/SettingsContent;->mPayments:Ljava/util/Map;

    const-string v1, "ebanking"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yopeso/lieferando/model/SettingsContent;->mPayments:Ljava/util/Map;

    const-string v1, "ebanking"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFidelityPointsActive()Z
    .locals 2

    .prologue
    .line 126
    const-string v0, "inactive"

    iget-object v1, p0, Lcom/yopeso/lieferando/model/SettingsContent;->mFidelityPoints:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isMaintenance()Z
    .locals 1

    .prologue
    .line 372
    iget-boolean v0, p0, Lcom/yopeso/lieferando/model/SettingsContent;->maintenance:Z

    return v0
.end method

.method public isOptionalUpdateAvailable()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/yopeso/lieferando/model/SettingsContent;->mShouldUpdate:Z

    return v0
.end method

.method public isPayUEnabled()Z
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/yopeso/lieferando/model/SettingsContent;->mPayments:Ljava/util/Map;

    const-string v1, "payu"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yopeso/lieferando/model/SettingsContent;->mPayments:Ljava/util/Map;

    const-string v1, "payu"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPaypalEnabled()Z
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/yopeso/lieferando/model/SettingsContent;->mPayments:Ljava/util/Map;

    const-string v1, "paypal"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yopeso/lieferando/model/SettingsContent;->mPayments:Ljava/util/Map;

    const-string v1, "paypal"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRequiredUpdateAvailable()Z
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/yopeso/lieferando/model/SettingsContent;->mForceUpdate:Z

    return v0
.end method

.method public isStampcardActive()Z
    .locals 2

    .prologue
    .line 123
    const-string v0, "inactive"

    iget-object v1, p0, Lcom/yopeso/lieferando/model/SettingsContent;->mStampCards:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setDynamicFaqHTML(Ljava/lang/String;)V
    .locals 0
    .param p1, "dynamicFaqHTML"    # Ljava/lang/String;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/yopeso/lieferando/model/SettingsContent;->mDynamicFaqHTML:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public setDynamicManualHTML(Ljava/lang/String;)V
    .locals 0
    .param p1, "dynamicManualHTML"    # Ljava/lang/String;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/yopeso/lieferando/model/SettingsContent;->mDynamicManualHTML:Ljava/lang/String;

    .line 185
    return-void
.end method

.method public setDynamicStartUpHTML(Ljava/lang/String;)V
    .locals 0
    .param p1, "dynamicStartUpHTML"    # Ljava/lang/String;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/yopeso/lieferando/model/SettingsContent;->mDynamicStartUpHTML:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public setErrorCodes(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 208
    .local p1, "errorCodes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/yopeso/lieferando/model/SettingsContent;->mErrorCodes:Ljava/util/Map;

    .line 209
    return-void
.end method

.method public setForceUpdate(Z)V
    .locals 0
    .param p1, "forceUpdate"    # Z

    .prologue
    .line 152
    iput-boolean p1, p0, Lcom/yopeso/lieferando/model/SettingsContent;->mForceUpdate:Z

    .line 153
    return-void
.end method

.method public setMaintenance(Z)V
    .locals 0
    .param p1, "maintenance"    # Z

    .prologue
    .line 377
    iput-boolean p1, p0, Lcom/yopeso/lieferando/model/SettingsContent;->maintenance:Z

    .line 378
    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 387
    iput-object p1, p0, Lcom/yopeso/lieferando/model/SettingsContent;->msg:Ljava/lang/String;

    .line 388
    return-void
.end method

.method public setPayments(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 200
    .local p1, "payments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    iput-object p1, p0, Lcom/yopeso/lieferando/model/SettingsContent;->mPayments:Ljava/util/Map;

    .line 201
    return-void
.end method

.method public setShouldUpdate(Z)V
    .locals 0
    .param p1, "shouldUpdate"    # Z

    .prologue
    .line 148
    iput-boolean p1, p0, Lcom/yopeso/lieferando/model/SettingsContent;->mShouldUpdate:Z

    .line 149
    return-void
.end method

.method public setSitenotice(Ljava/lang/String;)V
    .locals 0
    .param p1, "sitenotice"    # Ljava/lang/String;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/yopeso/lieferando/model/SettingsContent;->mSitenotice:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public setmButtonColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "mButtonColor"    # Ljava/lang/String;

    .prologue
    .line 308
    iput-object p1, p0, Lcom/yopeso/lieferando/model/SettingsContent;->mButtonColor:Ljava/lang/String;

    .line 309
    return-void
.end method

.method public setmLatestVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "mLatestVersion"    # Ljava/lang/String;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/yopeso/lieferando/model/SettingsContent;->mLatestVersion:Ljava/lang/String;

    .line 216
    return-void
.end method

.method public setmRestaurantsId(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 293
    .local p1, "mVouchers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/yopeso/lieferando/model/SettingsContent;->mVouchers:Ljava/util/List;

    .line 294
    return-void
.end method

.method public setmStoreURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "mStoreURL"    # Ljava/lang/String;

    .prologue
    .line 300
    iput-object p1, p0, Lcom/yopeso/lieferando/model/SettingsContent;->mStoreURL:Ljava/lang/String;

    .line 301
    return-void
.end method

.method public setmUpdateMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "mUpdateMessage"    # Ljava/lang/String;

    .prologue
    .line 261
    iput-object p1, p0, Lcom/yopeso/lieferando/model/SettingsContent;->mUpdateMessage:Ljava/lang/String;

    .line 262
    return-void
.end method

.method public setmUpdateMessages(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 254
    .local p1, "mUpdateMessages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/yopeso/lieferando/model/SettingsContent;->mUpdateMessages:Ljava/util/List;

    .line 255
    return-void
.end method

.method public setmVouchers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 283
    .local p1, "mVouchers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/yopeso/lieferando/model/SettingsContent;->mVouchers:Ljava/util/List;

    .line 284
    return-void
.end method

.method public shouldUpdate()Z
    .locals 1

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/yopeso/lieferando/model/SettingsContent;->isOptionalUpdateAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/yopeso/lieferando/model/SettingsContent;->isRequiredUpdateAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
