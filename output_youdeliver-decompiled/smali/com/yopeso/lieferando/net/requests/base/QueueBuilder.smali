.class public Lcom/yopeso/lieferando/net/requests/base/QueueBuilder;
.super Ljava/lang/Object;
.source "QueueBuilder.java"


# static fields
.field private static final DEFAULT_CACHE_DIR:Ljava/lang/String; = "lieferando"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v7

    const-string v8, "lieferando"

    invoke-direct {v0, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 34
    .local v0, "cacheDir":Ljava/io/File;
    const-string v6, "volley/0"

    .line 36
    .local v6, "userAgent":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 37
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v3, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 38
    .local v1, "info":Landroid/content/pm/PackageInfo;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 41
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v3    # "packageName":Ljava/lang/String;
    :goto_0
    const/4 v5, 0x0

    .line 42
    .local v5, "stack":Lcom/android/volley/toolbox/HttpStack;
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x9

    if-lt v7, v8, :cond_0

    .line 43
    new-instance v5, Lcom/android/volley/toolbox/HurlStack;

    .end local v5    # "stack":Lcom/android/volley/toolbox/HttpStack;
    invoke-direct {v5}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    .line 51
    .restart local v5    # "stack":Lcom/android/volley/toolbox/HttpStack;
    :goto_1
    new-instance v2, Lcom/android/volley/toolbox/BasicNetwork;

    invoke-direct {v2, v5}, Lcom/android/volley/toolbox/BasicNetwork;-><init>(Lcom/android/volley/toolbox/HttpStack;)V

    .line 53
    .local v2, "network":Lcom/android/volley/Network;
    new-instance v4, Lcom/android/volley/RequestQueue;

    new-instance v7, Lcom/android/volley/toolbox/DiskBasedCache;

    invoke-direct {v7, v0}, Lcom/android/volley/toolbox/DiskBasedCache;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v7, v2}, Lcom/android/volley/RequestQueue;-><init>(Lcom/android/volley/Cache;Lcom/android/volley/Network;)V

    .line 55
    .local v4, "queue":Lcom/android/volley/RequestQueue;
    return-object v4

    .line 48
    .end local v2    # "network":Lcom/android/volley/Network;
    .end local v4    # "queue":Lcom/android/volley/RequestQueue;
    :cond_0
    new-instance v5, Lcom/android/volley/toolbox/HttpClientStack;

    .end local v5    # "stack":Lcom/android/volley/toolbox/HttpStack;
    invoke-static {v6}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/android/volley/toolbox/HttpClientStack;-><init>(Lorg/apache/http/client/HttpClient;)V

    .restart local v5    # "stack":Lcom/android/volley/toolbox/HttpStack;
    goto :goto_1

    .line 39
    .end local v5    # "stack":Lcom/android/volley/toolbox/HttpStack;
    :catch_0
    move-exception v7

    goto :goto_0
.end method
