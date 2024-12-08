.class public Lcom/yopeso/lieferando/net/config/pl/ServerConfig;
.super Ljava/lang/Object;
.source "ServerConfig.java"

# interfaces
.implements Lcom/yopeso/lieferando/net/config/IConfig;


# static fields
.field public static final CALL_A_PIZZA:Z = false

.field public static final CONFIG_SERVER:Ljava/lang/String; = "http://config.yourdelivery.de/live/apps/pyszne.pl"

.field public static final FACEBOOK_APP_ID:Ljava/lang/String; = "468247336528413"

.field public static final HKAPP_ID:Ljava/lang/String; = "60a2848b8474d4b9116bbbeca8e75ec1"

.field public static final LIVE_ENVIRONMENT:Z = true

.field public static final MAINTENANCE:Ljava/lang/String; = "http://config.yourdelivery.de/live/apps/pyszne.pl/maintenance_android.json"

.field public static final MAINTENANCE_EN:Ljava/lang/String; = "http://config.yourdelivery.de/live/apps/pyszne.pl/maintenance_android_en.json"

.field public static final PREMIUM_APP_RESTAURANTS_URL:Ljava/lang/String; = "http://stage.call-a-pizza.de/mobile/restaurants.json"

.field public static final PUSH:Ljava/lang/String; = "6vyLHnIF67Gp0iBOQEQa0hMJAmw5eRDWvsgmP6iw"

.field public static final PUSH_APP_ID:Ljava/lang/String; = "tC1mMmZGZA7B3YK1ch7VGr9dGGIK5yXgkD0QyzH9"

.field public static final PYSZNE:Z = true

.field public static final SALES_FORCE:Ljava/lang/String; = "https://www.salesforce.com/servlet/servlet.WebToLead?encoding=UTF-8"

.field public static final TAKE_AWAY:Z = false

.field public static final VERSION_NAME:Ljava/lang/String; = "LivePoland(PlayStore)"


# instance fields
.field public CDN_URL:Ljava/lang/String;

.field public IMAGE_URL:Ljava/lang/String;

.field public SERVER_URL:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-string v0, "http://rest.yourdelivery.de/api/2.5"

    iput-object v0, p0, Lcom/yopeso/lieferando/net/config/pl/ServerConfig;->SERVER_URL:Ljava/lang/String;

    .line 54
    const-string v0, "http://pyszne.pl"

    iput-object v0, p0, Lcom/yopeso/lieferando/net/config/pl/ServerConfig;->CDN_URL:Ljava/lang/String;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/yopeso/lieferando/net/config/pl/ServerConfig;->IMAGE_URL:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public getCdnUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/yopeso/lieferando/net/config/pl/ServerConfig;->CDN_URL:Ljava/lang/String;

    return-object v0
.end method

.method public getFacebookId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 286
    const-string v0, "468247336528413"

    return-object v0
.end method

.method public getHockeyId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    const-string v0, "60a2848b8474d4b9116bbbeca8e75ec1"

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/yopeso/lieferando/net/config/pl/ServerConfig;->IMAGE_URL:Ljava/lang/String;

    return-object v0
.end method

.method public getMaintenance()Ljava/lang/String;
    .locals 3

    .prologue
    .line 204
    const-string v0, "http://config.yourdelivery.de/live/apps/pyszne.pl/maintenance_android.json"

    .line 205
    .local v0, "path":Ljava/lang/String;
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 206
    const-string v1, "pl"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 207
    const-string v0, "http://config.yourdelivery.de/live/apps/pyszne.pl/maintenance_android_en.json"

    .line 217
    :cond_0
    :goto_0
    return-object v0

    .line 212
    :cond_1
    const-string v1, "de"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 213
    const-string v0, "http://config.yourdelivery.de/live/apps/pyszne.pl/maintenance_android_en.json"

    goto :goto_0
.end method

.method public getPremiumRestaurantsURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 326
    const-string v0, "http://stage.call-a-pizza.de/mobile/restaurants.json"

    return-object v0
.end method

.method public getPush()Ljava/lang/String;
    .locals 1

    .prologue
    .line 300
    const-string v0, "6vyLHnIF67Gp0iBOQEQa0hMJAmw5eRDWvsgmP6iw"

    return-object v0
.end method

.method public getPushAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 296
    const-string v0, "tC1mMmZGZA7B3YK1ch7VGr9dGGIK5yXgkD0QyzH9"

    return-object v0
.end method

.method public getSalesForceURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 305
    const-string v0, "https://www.salesforce.com/servlet/servlet.WebToLead?encoding=UTF-8"

    return-object v0
.end method

.method public getServerUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/yopeso/lieferando/net/config/pl/ServerConfig;->SERVER_URL:Ljava/lang/String;

    return-object v0
.end method

.method public getSettings()Ljava/lang/String;
    .locals 3

    .prologue
    .line 221
    const/4 v0, 0x0

    .line 222
    .local v0, "path":Ljava/lang/String;
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isTakeaway()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 223
    const-string v1, "de"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 224
    const-string v0, "/config_ta_android_en.json"

    .line 245
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://config.yourdelivery.de/live/apps/pyszne.pl"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 227
    :cond_1
    const-string v0, "/config_ta_android.json"

    .line 229
    goto :goto_0

    .line 231
    :cond_2
    const-string v0, "/config_android.json"

    .line 232
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 233
    const-string v1, "pl"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 234
    const-string v0, "/config_android_en.json"

    .line 236
    goto :goto_0

    .line 239
    :cond_3
    const-string v1, "de"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 240
    const-string v0, "/config_android_en.json"

    goto :goto_0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    const-string v0, "LivePoland(PlayStore)"

    return-object v0
.end method

.method public isCallaPizza()Z
    .locals 1

    .prologue
    .line 270
    const/4 v0, 0x0

    return v0
.end method

.method public isLive()Z
    .locals 1

    .prologue
    .line 260
    const/4 v0, 0x1

    return v0
.end method

.method public isPoland()Z
    .locals 1

    .prologue
    .line 255
    const/4 v0, 0x1

    return v0
.end method

.method public isTakeaway()Z
    .locals 1

    .prologue
    .line 265
    const/4 v0, 0x0

    return v0
.end method

.method public setCDN_URL(Ljava/lang/String;)V
    .locals 0
    .param p1, "cDN_URL"    # Ljava/lang/String;

    .prologue
    .line 314
    iput-object p1, p0, Lcom/yopeso/lieferando/net/config/pl/ServerConfig;->CDN_URL:Ljava/lang/String;

    .line 315
    return-void
.end method

.method public setIMAGE_URL(Ljava/lang/String;)V
    .locals 0
    .param p1, "iMAGE_URL"    # Ljava/lang/String;

    .prologue
    .line 318
    iput-object p1, p0, Lcom/yopeso/lieferando/net/config/pl/ServerConfig;->IMAGE_URL:Ljava/lang/String;

    .line 319
    return-void
.end method

.method public setSERVER_URL(Ljava/lang/String;)V
    .locals 0
    .param p1, "sERVER_URL"    # Ljava/lang/String;

    .prologue
    .line 310
    iput-object p1, p0, Lcom/yopeso/lieferando/net/config/pl/ServerConfig;->SERVER_URL:Ljava/lang/String;

    .line 311
    return-void
.end method
