.class public final Lcom/kahuna/sdk/GCMRegistrar;
.super Ljava/lang/Object;
.source "GCMRegistrar.java"


# static fields
.field private static final BACKOFF_MS:Ljava/lang/String; = "backoff_ms"

.field private static final DEFAULT_BACKOFF_MS:I = 0xbb8

.field public static final DEFAULT_ON_SERVER_LIFESPAN_MS:J = 0x240c8400L

.field private static final GSF_PACKAGE:Ljava/lang/String; = "com.google.android.gsf"

.field private static final PREFERENCES:Ljava/lang/String; = "com.google.android.gcm"

.field private static final PROPERTY_APP_VERSION:Ljava/lang/String; = "appVersion"

.field private static final PROPERTY_ON_SERVER:Ljava/lang/String; = "onServer"

.field private static final PROPERTY_ON_SERVER_EXPIRATION_TIME:Ljava/lang/String; = "onServerExpirationTime"

.field private static final PROPERTY_ON_SERVER_LIFESPAN:Ljava/lang/String; = "onServerLifeSpan"

.field private static final PROPERTY_REG_ID:Ljava/lang/String; = "regId"

.field private static final TAG:Ljava/lang/String; = "GCMRegistrar"

.field private static sAppPendingIntent:Landroid/app/PendingIntent;

.field private static sRetryReceiver:Lcom/kahuna/sdk/KahunaPushReceiver;

.field private static sRetryReceiverClassName:Ljava/lang/String;

.field private static sRetryReceiverContext:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 553
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 554
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method static declared-synchronized cancelAppPendingIntent()V
    .locals 2

    .prologue
    .line 277
    const-class v1, Lcom/kahuna/sdk/GCMRegistrar;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/kahuna/sdk/GCMRegistrar;->sAppPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 278
    sget-object v0, Lcom/kahuna/sdk/GCMRegistrar;->sAppPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->cancel()V

    .line 279
    const/4 v0, 0x0

    sput-object v0, Lcom/kahuna/sdk/GCMRegistrar;->sAppPendingIntent:Landroid/app/PendingIntent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    :cond_0
    monitor-exit v1

    return-void

    .line 277
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static checkDevice(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 97
    .local v2, "version":I
    const/16 v3, 0x8

    if-ge v2, v3, :cond_0

    .line 98
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Device must be at least API Level 8 (instead of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 100
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 102
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v3, "com.google.android.gsf"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    return-void

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v4, "Device does not have package com.google.android.gsf"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static checkManifest(Landroid/content/Context;)V
    .locals 17
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 136
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 137
    .local v6, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 138
    .local v7, "packageName":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".permission.C2D_MESSAGE"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 141
    .local v8, "permissionName":Ljava/lang/String;
    const/16 v12, 0x1000

    :try_start_0
    invoke-virtual {v6, v8, v12}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    const/4 v12, 0x2

    :try_start_1
    invoke-virtual {v6, v7, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v11

    .line 156
    .local v11, "receiversInfo":Landroid/content/pm/PackageInfo;
    iget-object v10, v11, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    .line 157
    .local v10, "receivers":[Landroid/content/pm/ActivityInfo;
    if-eqz v10, :cond_0

    array-length v12, v10

    if-nez v12, :cond_1

    .line 158
    :cond_0
    new-instance v12, Ljava/lang/IllegalStateException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "No receiver for package "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 143
    .end local v10    # "receivers":[Landroid/content/pm/ActivityInfo;
    .end local v11    # "receiversInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v3

    .line 144
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v12, Ljava/lang/IllegalStateException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Application does not define permission "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 152
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v3

    .line 153
    .restart local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v12, Ljava/lang/IllegalStateException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Could not get receivers for package "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 160
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v10    # "receivers":[Landroid/content/pm/ActivityInfo;
    .restart local v11    # "receiversInfo":Landroid/content/pm/PackageInfo;
    :cond_1
    const/4 v12, 0x2

    const-string v13, "number of receivers for %s: %d"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v7, v14, v15

    const/4 v15, 0x1

    array-length v0, v10

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-static {v0, v12, v13, v14}, Lcom/kahuna/sdk/GCMRegistrar;->log(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 162
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 163
    .local v1, "allowedReceivers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v2, v10

    .local v2, "arr$":[Landroid/content/pm/ActivityInfo;
    array-length v5, v2

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v9, v2, v4

    .line 164
    .local v9, "receiver":Landroid/content/pm/ActivityInfo;
    const-string v12, "com.google.android.c2dm.permission.SEND"

    iget-object v13, v9, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 166
    iget-object v12, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-interface {v1, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 163
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 167
    .end local v9    # "receiver":Landroid/content/pm/ActivityInfo;
    :cond_3
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 168
    new-instance v12, Ljava/lang/IllegalStateException;

    const-string v13, "No receiver allowed to receive com.google.android.c2dm.permission.SEND"

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 170
    :cond_4
    const-string v12, "com.google.android.c2dm.intent.REGISTRATION"

    move-object/from16 v0, p0

    invoke-static {v0, v1, v12}, Lcom/kahuna/sdk/GCMRegistrar;->checkReceiver(Landroid/content/Context;Ljava/util/Set;Ljava/lang/String;)V

    .line 172
    const-string v12, "com.google.android.c2dm.intent.RECEIVE"

    move-object/from16 v0, p0

    invoke-static {v0, v1, v12}, Lcom/kahuna/sdk/GCMRegistrar;->checkReceiver(Landroid/content/Context;Ljava/util/Set;Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method private static checkReceiver(Landroid/content/Context;Ljava/util/Set;Ljava/lang/String;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "action"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "allowedReceivers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v11, 0x2

    .line 178
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 179
    .local v4, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 180
    .local v3, "packageName":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 181
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    const/16 v7, 0x20

    invoke-virtual {v4, v1, v7}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 184
    .local v6, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 185
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No receivers for action "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 187
    :cond_0
    const-string v7, "Found %d receivers for action %s"

    new-array v8, v11, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p2, v8, v9

    invoke-static {p0, v11, v7, v8}, Lcom/kahuna/sdk/GCMRegistrar;->log(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 190
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 191
    .local v5, "receiver":Landroid/content/pm/ResolveInfo;
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 192
    .local v2, "name":Ljava/lang/String;
    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 193
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Receiver "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is not set with permission "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "com.google.android.c2dm.permission.SEND"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 197
    .end local v2    # "name":Ljava/lang/String;
    .end local v5    # "receiver":Landroid/content/pm/ResolveInfo;
    :cond_2
    return-void
.end method

.method static clearRegistrationId(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 378
    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    invoke-static {p0, v0, v2, v3}, Lcom/kahuna/sdk/GCMRegistrar;->setRegisteredOnServer(Landroid/content/Context;Ljava/lang/Boolean;J)V

    .line 379
    const-string v0, ""

    invoke-static {p0, v0}, Lcom/kahuna/sdk/GCMRegistrar;->setRegistrationId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getAppVersion(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 484
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 486
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 487
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 489
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Coult not get package name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static getBackoff(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 512
    invoke-static {p0}, Lcom/kahuna/sdk/GCMRegistrar;->getGCMPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 513
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "backoff_ms"

    const/16 v2, 0xbb8

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method static varargs getFlatSenderIds([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "senderIds"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 250
    if-eqz p0, :cond_0

    array-length v2, p0

    if-eqz v2, :cond_0

    aget-object v2, p0, v3

    if-nez v2, :cond_1

    .line 251
    :cond_0
    const-string v2, "KahunaAnalytics"

    const-string v3, "App is configured for Push, but you need to call onAppCreate() in your Application to prevent strange behavior!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    const-string v2, ""

    .line 257
    :goto_0
    return-object v2

    .line 254
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    aget-object v2, p0, v3

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 255
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 256
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 257
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private static getGCMPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 533
    const-string v0, "com.google.android.gcm"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getRegisterOnServerLifespan(Landroid/content/Context;)J
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 461
    invoke-static {p0}, Lcom/kahuna/sdk/GCMRegistrar;->getGCMPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 462
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "onServerLifeSpan"

    const-wide/32 v4, 0x240c8400

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 464
    .local v0, "lifespan":J
    return-wide v0
.end method

.method public static getRegistrationId(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x2

    const/high16 v6, -0x80000000

    .line 346
    invoke-static {p0}, Lcom/kahuna/sdk/GCMRegistrar;->getGCMPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 347
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v4, "regId"

    const-string v5, ""

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 350
    .local v3, "registrationId":Ljava/lang/String;
    const-string v4, "appVersion"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 351
    .local v1, "oldVersion":I
    invoke-static {p0}, Lcom/kahuna/sdk/GCMRegistrar;->getAppVersion(Landroid/content/Context;)I

    move-result v0

    .line 352
    .local v0, "newVersion":I
    if-eq v1, v6, :cond_0

    if-eq v1, v0, :cond_0

    .line 353
    const-string v4, "App version changed from %d to %d;resetting registration id"

    new-array v5, v8, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {p0, v8, v4, v5}, Lcom/kahuna/sdk/GCMRegistrar;->log(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 355
    invoke-static {p0}, Lcom/kahuna/sdk/GCMRegistrar;->clearRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    .line 356
    const-string v3, ""

    .line 358
    :cond_0
    return-object v3
.end method

.method static varargs internalRegister(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "senderIds"    # [Ljava/lang/String;

    .prologue
    .line 219
    invoke-static {p1}, Lcom/kahuna/sdk/GCMRegistrar;->getFlatSenderIds([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, "flatSenderIds":Ljava/lang/String;
    const/4 v2, 0x2

    const-string v3, "Registering app for senders %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {p0, v2, v3, v4}, Lcom/kahuna/sdk/GCMRegistrar;->log(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 222
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.c2dm.intent.REGISTER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 223
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.google.android.gsf"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    invoke-static {p0, v1}, Lcom/kahuna/sdk/GCMRegistrar;->setPackageNameExtra(Landroid/content/Context;Landroid/content/Intent;)V

    .line 225
    const-string v2, "sender"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 227
    return-void
.end method

.method static internalUnregister(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 242
    const/4 v1, 0x2

    const-string v2, "Unregistering app"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2, v3}, Lcom/kahuna/sdk/GCMRegistrar;->log(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 243
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.c2dm.intent.UNREGISTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 244
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.google.android.gsf"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    invoke-static {p0, v0}, Lcom/kahuna/sdk/GCMRegistrar;->setPackageNameExtra(Landroid/content/Context;Landroid/content/Intent;)V

    .line 246
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 247
    return-void
.end method

.method public static isRegistered(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 366
    invoke-static {p0}, Lcom/kahuna/sdk/GCMRegistrar;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRegisteredOnServer(Landroid/content/Context;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 437
    invoke-static {p0}, Lcom/kahuna/sdk/GCMRegistrar;->getGCMPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 438
    .local v3, "prefs":Landroid/content/SharedPreferences;
    const-string v5, "onServer"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 439
    .local v2, "isRegistered":Z
    const-string v5, "Is registered on server: %b"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {p0, v9, v5, v6}, Lcom/kahuna/sdk/GCMRegistrar;->log(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 440
    if-eqz v2, :cond_0

    .line 442
    const-string v5, "onServerExpirationTime"

    const-wide/16 v6, -0x1

    invoke-interface {v3, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 444
    .local v0, "expirationTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v5, v6, v0

    if-lez v5, :cond_0

    .line 445
    const-string v5, "flag expired on: %s"

    new-array v6, v8, [Ljava/lang/Object;

    new-instance v7, Ljava/sql/Timestamp;

    invoke-direct {v7, v0, v1}, Ljava/sql/Timestamp;-><init>(J)V

    aput-object v7, v6, v4

    invoke-static {p0, v9, v5, v6}, Lcom/kahuna/sdk/GCMRegistrar;->log(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/Object;)V

    move v2, v4

    .line 450
    .end local v0    # "expirationTime":J
    .end local v2    # "isRegistered":Z
    :cond_0
    return v2
.end method

.method private static varargs log(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "priority"    # I
    .param p2, "template"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 546
    const-string v1, "GCMRegistrar"

    invoke-static {v1, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 547
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 548
    .local v0, "message":Ljava/lang/String;
    const-string v1, "GCMRegistrar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 551
    .end local v0    # "message":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static declared-synchronized onDestroy(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 268
    const-class v1, Lcom/kahuna/sdk/GCMRegistrar;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/kahuna/sdk/GCMRegistrar;->sRetryReceiver:Lcom/kahuna/sdk/KahunaPushReceiver;

    if-eqz v0, :cond_0

    .line 269
    const/4 v0, 0x2

    const-string v2, "Unregistering retry receiver"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v2, v3}, Lcom/kahuna/sdk/GCMRegistrar;->log(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 270
    sget-object v0, Lcom/kahuna/sdk/GCMRegistrar;->sRetryReceiverContext:Landroid/content/Context;

    sget-object v2, Lcom/kahuna/sdk/GCMRegistrar;->sRetryReceiver:Lcom/kahuna/sdk/KahunaPushReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 271
    const/4 v0, 0x0

    sput-object v0, Lcom/kahuna/sdk/GCMRegistrar;->sRetryReceiver:Lcom/kahuna/sdk/KahunaPushReceiver;

    .line 272
    const/4 v0, 0x0

    sput-object v0, Lcom/kahuna/sdk/GCMRegistrar;->sRetryReceiverContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    :cond_0
    monitor-exit v1

    return-void

    .line 268
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static varargs register(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "senderIds"    # [Ljava/lang/String;

    .prologue
    .line 214
    invoke-static {p0}, Lcom/kahuna/sdk/GCMRegistrar;->resetBackoff(Landroid/content/Context;)V

    .line 215
    invoke-static {p0, p1}, Lcom/kahuna/sdk/GCMRegistrar;->internalRegister(Landroid/content/Context;[Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method static resetBackoff(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 501
    const/4 v0, 0x2

    const-string v1, "Resetting backoff"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/kahuna/sdk/GCMRegistrar;->log(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 502
    const/16 v0, 0xbb8

    invoke-static {p0, v0}, Lcom/kahuna/sdk/GCMRegistrar;->setBackoff(Landroid/content/Context;I)V

    .line 503
    return-void
.end method

.method static setBackoff(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "backoff"    # I

    .prologue
    .line 526
    invoke-static {p0}, Lcom/kahuna/sdk/GCMRegistrar;->getGCMPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 527
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 528
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "backoff_ms"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 529
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 530
    return-void
.end method

.method private static declared-synchronized setPackageNameExtra(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 285
    const-class v1, Lcom/kahuna/sdk/GCMRegistrar;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/kahuna/sdk/GCMRegistrar;->sAppPendingIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    .line 286
    const/4 v0, 0x2

    const-string v2, "Creating pending intent to get package name"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v2, v3}, Lcom/kahuna/sdk/GCMRegistrar;->log(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 288
    const/4 v0, 0x0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const/4 v3, 0x0

    invoke-static {p0, v0, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    sput-object v0, Lcom/kahuna/sdk/GCMRegistrar;->sAppPendingIntent:Landroid/app/PendingIntent;

    .line 291
    :cond_0
    const-string v0, "app"

    sget-object v2, Lcom/kahuna/sdk/GCMRegistrar;->sAppPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    monitor-exit v1

    return-void

    .line 285
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static setRegisterOnServerLifespan(Landroid/content/Context;J)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "lifespan"    # J

    .prologue
    .line 473
    invoke-static {p0}, Lcom/kahuna/sdk/GCMRegistrar;->getGCMPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 474
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 475
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "onServerLifeSpan"

    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 476
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 477
    return-void
.end method

.method private static setRegisteredOnServer(Landroid/content/Context;Ljava/lang/Boolean;J)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "flag"    # Ljava/lang/Boolean;
    .param p2, "expirationTime"    # J

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 412
    invoke-static {p0}, Lcom/kahuna/sdk/GCMRegistrar;->getGCMPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 413
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 414
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    if-eqz p1, :cond_0

    .line 415
    const-string v2, "onServer"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 416
    const-string v2, "Setting registeredOnServer flag as %b until %s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v6

    new-instance v4, Ljava/sql/Timestamp;

    invoke-direct {v4, p2, p3}, Ljava/sql/Timestamp;-><init>(J)V

    aput-object v4, v3, v7

    invoke-static {p0, v5, v2, v3}, Lcom/kahuna/sdk/GCMRegistrar;->log(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 423
    :goto_0
    const-string v2, "onServerExpirationTime"

    invoke-interface {v0, v2, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 424
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 425
    return-void

    .line 420
    :cond_0
    const-string v2, "Setting registeredOnServer expiration to %s"

    new-array v3, v7, [Ljava/lang/Object;

    new-instance v4, Ljava/sql/Timestamp;

    invoke-direct {v4, p2, p3}, Ljava/sql/Timestamp;-><init>(J)V

    aput-object v4, v3, v6

    invoke-static {p0, v5, v2, v3}, Lcom/kahuna/sdk/GCMRegistrar;->log(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static setRegisteredOnServer(Landroid/content/Context;Z)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "flag"    # Z

    .prologue
    .line 405
    invoke-static {p0}, Lcom/kahuna/sdk/GCMRegistrar;->getRegisterOnServerLifespan(Landroid/content/Context;)J

    move-result-wide v2

    .line 406
    .local v2, "lifespan":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long v0, v4, v2

    .line 407
    .local v0, "expirationTime":J
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {p0, v4, v0, v1}, Lcom/kahuna/sdk/GCMRegistrar;->setRegisteredOnServer(Landroid/content/Context;Ljava/lang/Boolean;J)V

    .line 408
    return-void
.end method

.method static setRegistrationId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "regId"    # Ljava/lang/String;

    .prologue
    .line 389
    invoke-static {p0}, Lcom/kahuna/sdk/GCMRegistrar;->getGCMPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 390
    .local v3, "prefs":Landroid/content/SharedPreferences;
    const-string v4, "regId"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 391
    .local v2, "oldRegistrationId":Ljava/lang/String;
    invoke-static {p0}, Lcom/kahuna/sdk/GCMRegistrar;->getAppVersion(Landroid/content/Context;)I

    move-result v0

    .line 392
    .local v0, "appVersion":I
    const/4 v4, 0x2

    const-string v5, "Saving regId on app version %d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {p0, v4, v5, v6}, Lcom/kahuna/sdk/GCMRegistrar;->log(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 393
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 394
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "regId"

    invoke-interface {v1, v4, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 395
    const-string v4, "appVersion"

    invoke-interface {v1, v4, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 396
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 397
    return-object v2
.end method

.method static declared-synchronized setRetryBroadcastReceiver(Landroid/content/Context;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 299
    const-class v5, Lcom/kahuna/sdk/GCMRegistrar;

    monitor-enter v5

    :try_start_0
    sget-object v4, Lcom/kahuna/sdk/GCMRegistrar;->sRetryReceiver:Lcom/kahuna/sdk/KahunaPushReceiver;

    if-nez v4, :cond_0

    .line 300
    sget-object v4, Lcom/kahuna/sdk/GCMRegistrar;->sRetryReceiverClassName:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 302
    const/4 v4, 0x6

    const-string v6, "internal error: retry receiver class not set yet"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p0, v4, v6, v7}, Lcom/kahuna/sdk/GCMRegistrar;->log(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 304
    new-instance v4, Lcom/kahuna/sdk/KahunaPushReceiver;

    invoke-direct {v4}, Lcom/kahuna/sdk/KahunaPushReceiver;-><init>()V

    sput-object v4, Lcom/kahuna/sdk/GCMRegistrar;->sRetryReceiver:Lcom/kahuna/sdk/KahunaPushReceiver;

    .line 317
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 318
    .local v0, "category":Ljava/lang/String;
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.google.android.gcm.intent.RETRY"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 320
    .local v3, "filter":Landroid/content/IntentFilter;
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 321
    const/4 v4, 0x2

    const-string v6, "Registering retry receiver"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p0, v4, v6, v7}, Lcom/kahuna/sdk/GCMRegistrar;->log(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 322
    sput-object p0, Lcom/kahuna/sdk/GCMRegistrar;->sRetryReceiverContext:Landroid/content/Context;

    .line 323
    sget-object v4, Lcom/kahuna/sdk/GCMRegistrar;->sRetryReceiverContext:Landroid/content/Context;

    sget-object v6, Lcom/kahuna/sdk/GCMRegistrar;->sRetryReceiver:Lcom/kahuna/sdk/KahunaPushReceiver;

    invoke-virtual {v4, v6, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    .end local v0    # "category":Ljava/lang/String;
    .end local v3    # "filter":Landroid/content/IntentFilter;
    :cond_0
    monitor-exit v5

    return-void

    .line 308
    :cond_1
    :try_start_1
    sget-object v4, Lcom/kahuna/sdk/GCMRegistrar;->sRetryReceiverClassName:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 309
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kahuna/sdk/KahunaPushReceiver;

    sput-object v4, Lcom/kahuna/sdk/GCMRegistrar;->sRetryReceiver:Lcom/kahuna/sdk/KahunaPushReceiver;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 310
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    .line 311
    .local v2, "e":Ljava/lang/Exception;
    const/4 v4, 0x6

    :try_start_2
    const-string v6, "Could not create instance of %s. Using %s directly."

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    sget-object v9, Lcom/kahuna/sdk/GCMRegistrar;->sRetryReceiverClassName:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-class v9, Lcom/kahuna/sdk/KahunaPushReceiver;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {p0, v4, v6, v7}, Lcom/kahuna/sdk/GCMRegistrar;->log(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 314
    new-instance v4, Lcom/kahuna/sdk/KahunaPushReceiver;

    invoke-direct {v4}, Lcom/kahuna/sdk/KahunaPushReceiver;-><init>()V

    sput-object v4, Lcom/kahuna/sdk/GCMRegistrar;->sRetryReceiver:Lcom/kahuna/sdk/KahunaPushReceiver;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 299
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method static declared-synchronized setRetryReceiverClassName(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 332
    const-class v1, Lcom/kahuna/sdk/GCMRegistrar;

    monitor-enter v1

    const/4 v0, 0x2

    :try_start_0
    const-string v2, "Setting the name of retry receiver class to %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v0, v2, v3}, Lcom/kahuna/sdk/GCMRegistrar;->log(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 334
    sput-object p1, Lcom/kahuna/sdk/GCMRegistrar;->sRetryReceiverClassName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    monitor-exit v1

    return-void

    .line 332
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static unregister(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 237
    invoke-static {p0}, Lcom/kahuna/sdk/GCMRegistrar;->resetBackoff(Landroid/content/Context;)V

    .line 238
    invoke-static {p0}, Lcom/kahuna/sdk/GCMRegistrar;->internalUnregister(Landroid/content/Context;)V

    .line 239
    return-void
.end method
