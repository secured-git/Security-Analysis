.class public Lcom/yopeso/lieferando/util/UserStore;
.super Ljava/lang/Object;
.source "UserStore.java"


# static fields
.field public static final CACHED_ADDRESSES:Ljava/lang/String; = "key_cached_addresses"

.field public static final USER_DATA:Ljava/lang/String; = "key_user_data"

.field public static final USER_MESSAGES:Ljava/lang/String; = "key_user_messages"

.field private static mCached_addresses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static mMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/PushMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static sPreferences:Landroid/content/SharedPreferences;

.field private static sUserData:Lcom/yopeso/lieferando/model/user/UserData;

.field public static shown_messages:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/yopeso/lieferando/util/UserStore;->mMessages:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/yopeso/lieferando/util/UserStore;->mCached_addresses:Ljava/util/HashMap;

    .line 41
    const/4 v0, 0x0

    sput v0, Lcom/yopeso/lieferando/util/UserStore;->shown_messages:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "plz"    # Ljava/lang/String;
    .param p1, "street"    # Ljava/lang/String;
    .param p2, "houseNr"    # Ljava/lang/String;

    .prologue
    .line 160
    sget-object v0, Lcom/yopeso/lieferando/util/UserStore;->mCached_addresses:Ljava/util/HashMap;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->saveAddresses()V

    .line 162
    return-void
.end method

.method public static addPushMessage(Lcom/yopeso/lieferando/model/PushMessage;)V
    .locals 1
    .param p0, "message"    # Lcom/yopeso/lieferando/model/PushMessage;

    .prologue
    .line 165
    sget-object v0, Lcom/yopeso/lieferando/util/UserStore;->mMessages:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    sget v0, Lcom/yopeso/lieferando/util/UserStore;->shown_messages:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/yopeso/lieferando/util/UserStore;->shown_messages:I

    .line 167
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->saveMessages()V

    .line 168
    return-void
.end method

.method public static clear()V
    .locals 2

    .prologue
    .line 291
    const/4 v0, 0x0

    sput-object v0, Lcom/yopeso/lieferando/util/UserStore;->sUserData:Lcom/yopeso/lieferando/model/user/UserData;

    .line 292
    sget-object v0, Lcom/yopeso/lieferando/util/UserStore;->sPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key_user_data"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "user_access_token"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key_user_messages"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 293
    return-void
.end method

.method public static getCahedAddress(Ljava/lang/String;)Landroid/util/Pair;
    .locals 3
    .param p0, "plz"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 189
    sget-object v1, Lcom/yopeso/lieferando/util/UserStore;->mCached_addresses:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 194
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 189
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 190
    .local v0, "p":Ljava/lang/String;
    invoke-virtual {p0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 191
    sget-object v1, Lcom/yopeso/lieferando/util/UserStore;->mCached_addresses:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    goto :goto_0
.end method

.method public static getData()Lcom/yopeso/lieferando/model/user/UserData;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/yopeso/lieferando/util/UserStore;->sUserData:Lcom/yopeso/lieferando/model/user/UserData;

    return-object v0
.end method

.method public static getEmail()Ljava/lang/String;
    .locals 3

    .prologue
    .line 327
    sget-object v0, Lcom/yopeso/lieferando/util/UserStore;->sPreferences:Landroid/content/SharedPreferences;

    const-string v1, "email"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFirstName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 319
    sget-object v0, Lcom/yopeso/lieferando/util/UserStore;->sPreferences:Landroid/content/SharedPreferences;

    const-string v1, "prename"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHouseNr()Ljava/lang/String;
    .locals 3

    .prologue
    .line 342
    sget-object v0, Lcom/yopeso/lieferando/util/UserStore;->sPreferences:Landroid/content/SharedPreferences;

    const-string v1, "number"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLastName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 323
    sget-object v0, Lcom/yopeso/lieferando/util/UserStore;->sPreferences:Landroid/content/SharedPreferences;

    const-string v1, "name"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMessages()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/PushMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 200
    sget-object v0, Lcom/yopeso/lieferando/util/UserStore;->mMessages:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getPLZ()Ljava/lang/String;
    .locals 3

    .prologue
    .line 335
    sget-object v0, Lcom/yopeso/lieferando/util/UserStore;->sPreferences:Landroid/content/SharedPreferences;

    const-string v1, "plz"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStreet()Ljava/lang/String;
    .locals 3

    .prologue
    .line 339
    sget-object v0, Lcom/yopeso/lieferando/util/UserStore;->sPreferences:Landroid/content/SharedPreferences;

    const-string v1, "street"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTel()Ljava/lang/String;
    .locals 3

    .prologue
    .line 331
    sget-object v0, Lcom/yopeso/lieferando/util/UserStore;->sPreferences:Landroid/content/SharedPreferences;

    const-string v1, "tel"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getToken()Ljava/lang/String;
    .locals 3

    .prologue
    .line 99
    sget-object v0, Lcom/yopeso/lieferando/util/UserStore;->sPreferences:Landroid/content/SharedPreferences;

    const-string v1, "user_access_token"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUnreadMessagesCount()I
    .locals 4

    .prologue
    .line 204
    const/4 v0, 0x0

    .line 205
    .local v0, "count":I
    sget-object v2, Lcom/yopeso/lieferando/util/UserStore;->mMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 210
    return v0

    .line 205
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yopeso/lieferando/model/PushMessage;

    .line 206
    .local v1, "message":Lcom/yopeso/lieferando/model/PushMessage;
    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/PushMessage;->isRead()Z

    move-result v3

    if-nez v3, :cond_0

    .line 207
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static initWithContext(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/yopeso/lieferando/util/UserStore;->sPreferences:Landroid/content/SharedPreferences;

    .line 51
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->load()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v0

    sput-object v0, Lcom/yopeso/lieferando/util/UserStore;->sUserData:Lcom/yopeso/lieferando/model/user/UserData;

    .line 52
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->loadMessages()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/yopeso/lieferando/util/UserStore;->mMessages:Ljava/util/ArrayList;

    .line 53
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->loadAddresses()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/yopeso/lieferando/util/UserStore;->mCached_addresses:Ljava/util/HashMap;

    .line 55
    const-class v0, Lcom/yopeso/lieferando/util/UserStore;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "initWithContext !"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    return-void
.end method

.method public static isFavorite(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Z
    .locals 1
    .param p0, "restaurant"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .prologue
    .line 89
    sget-object v0, Lcom/yopeso/lieferando/util/UserStore;->sUserData:Lcom/yopeso/lieferando/model/user/UserData;

    if-nez v0, :cond_0

    .line 90
    const/4 v0, 0x0

    .line 92
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/yopeso/lieferando/util/UserStore;->sUserData:Lcom/yopeso/lieferando/model/user/UserData;

    invoke-virtual {v0, p0}, Lcom/yopeso/lieferando/model/user/UserData;->isRestaurantFavorite(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isLoggedIn()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 278
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 282
    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/yopeso/lieferando/util/UserStore;->sUserData:Lcom/yopeso/lieferando/model/user/UserData;

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getToken()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLoggedInWithFb()Z
    .locals 3

    .prologue
    .line 308
    sget-object v0, Lcom/yopeso/lieferando/util/UserStore;->sPreferences:Landroid/content/SharedPreferences;

    const-string v1, "is_logged_in_with_fb_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static load()Lcom/yopeso/lieferando/model/user/UserData;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 112
    const-class v4, Lcom/yopeso/lieferando/util/UserStore;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "load !"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    sget-object v4, Lcom/yopeso/lieferando/util/UserStore;->sPreferences:Landroid/content/SharedPreferences;

    const-string v5, "key_user_data"

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 114
    .local v2, "userSerialized":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 116
    :try_start_0
    invoke-static {v2}, Lcom/yopeso/lieferando/util/SerializeUtils;->fromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/user/UserData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :goto_0
    return-object v0

    .line 127
    :catch_0
    move-exception v1

    .line 128
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    move-object v0, v3

    .line 131
    goto :goto_0
.end method

.method private static loadAddresses()Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 148
    sget-object v2, Lcom/yopeso/lieferando/util/UserStore;->sPreferences:Landroid/content/SharedPreferences;

    const-string v3, "key_cached_addresses"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 149
    .local v1, "userSerialized":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 151
    :try_start_0
    invoke-static {v1}, Lcom/yopeso/lieferando/util/SerializeUtils;->fromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :goto_0
    return-object v2

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 156
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    goto :goto_0
.end method

.method private static loadMessages()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/PushMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    sget-object v2, Lcom/yopeso/lieferando/util/UserStore;->sPreferences:Landroid/content/SharedPreferences;

    const-string v3, "key_user_messages"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, "userSerialized":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 139
    :try_start_0
    invoke-static {v1}, Lcom/yopeso/lieferando/util/SerializeUtils;->fromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :goto_0
    return-object v2

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 144
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public static save()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 257
    :try_start_0
    sget-object v2, Lcom/yopeso/lieferando/util/UserStore;->sUserData:Lcom/yopeso/lieferando/model/user/UserData;

    invoke-static {v2}, Lcom/yopeso/lieferando/util/SerializeUtils;->toString(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v1

    .line 262
    .local v1, "serializedData":Ljava/lang/String;
    sget-object v2, Lcom/yopeso/lieferando/util/UserStore;->sPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "key_user_data"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    :goto_0
    return-void

    .line 263
    :catch_0
    move-exception v0

    .line 264
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static saveAddresses()V
    .locals 4

    .prologue
    .line 181
    :try_start_0
    sget-object v2, Lcom/yopeso/lieferando/util/UserStore;->mCached_addresses:Ljava/util/HashMap;

    invoke-static {v2}, Lcom/yopeso/lieferando/util/SerializeUtils;->toString(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v1

    .line 182
    .local v1, "serializedData":Ljava/lang/String;
    sget-object v2, Lcom/yopeso/lieferando/util/UserStore;->sPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "key_cached_addresses"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :goto_0
    return-void

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static saveMessages()V
    .locals 4

    .prologue
    .line 172
    :try_start_0
    sget-object v2, Lcom/yopeso/lieferando/util/UserStore;->mMessages:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/yopeso/lieferando/util/SerializeUtils;->toString(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, "serializedData":Ljava/lang/String;
    sget-object v2, Lcom/yopeso/lieferando/util/UserStore;->sPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "key_user_messages"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :goto_0
    return-void

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static saveToken(Ljava/lang/String;)V
    .locals 2
    .param p0, "newAccessToken"    # Ljava/lang/String;

    .prologue
    .line 103
    sget-object v0, Lcom/yopeso/lieferando/util/UserStore;->sPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "user_access_token"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 104
    return-void
.end method

.method public static saveUserData_NO_LOGIN(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "firstName"    # Ljava/lang/String;
    .param p1, "lastName"    # Ljava/lang/String;
    .param p2, "email"    # Ljava/lang/String;
    .param p3, "phone"    # Ljava/lang/String;
    .param p4, "zip"    # Ljava/lang/String;
    .param p5, "street"    # Ljava/lang/String;
    .param p6, "house_number"    # Ljava/lang/String;

    .prologue
    .line 313
    sget-object v0, Lcom/yopeso/lieferando/util/UserStore;->sPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "prename"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "name"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 314
    const-string v1, "email"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "tel"

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 315
    const-string v1, "plz"

    invoke-interface {v0, v1, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "street"

    invoke-interface {v0, v1, p5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "number"

    invoke-interface {v0, v1, p6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 316
    return-void
.end method

.method public static setData(Lcom/yopeso/lieferando/model/user/UserData;)V
    .locals 3
    .param p0, "userData"    # Lcom/yopeso/lieferando/model/user/UserData;

    .prologue
    .line 64
    const-class v0, Lcom/yopeso/lieferando/model/user/UserData;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setData:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    sget-object v0, Lcom/yopeso/lieferando/util/UserStore;->sUserData:Lcom/yopeso/lieferando/model/user/UserData;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/yopeso/lieferando/model/user/UserData;->getTelephone()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    sget-object v0, Lcom/yopeso/lieferando/util/UserStore;->sUserData:Lcom/yopeso/lieferando/model/user/UserData;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/UserData;->getTelephone()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/model/user/UserData;->setTelephone(Ljava/lang/String;)V

    .line 69
    :cond_0
    sput-object p0, Lcom/yopeso/lieferando/util/UserStore;->sUserData:Lcom/yopeso/lieferando/model/user/UserData;

    .line 70
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->save()V

    .line 71
    return-void
.end method

.method public static setLoggedInWithFb(Z)V
    .locals 2
    .param p0, "isLoggedInWithFb"    # Z

    .prologue
    .line 303
    sget-object v0, Lcom/yopeso/lieferando/util/UserStore;->sPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "is_logged_in_with_fb_key"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 304
    invoke-static {p0}, Lcom/yopeso/lieferando/util/TrackingUtils;->facebookConnectedKahuna(Z)V

    .line 305
    return-void
.end method

.method public static unlinkFacebook()V
    .locals 2

    .prologue
    .line 269
    sget-object v0, Lcom/yopeso/lieferando/util/UserStore;->sUserData:Lcom/yopeso/lieferando/model/user/UserData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/user/UserData;->setFacebookId(Ljava/lang/String;)V

    .line 270
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->save()V

    .line 271
    return-void
.end method
