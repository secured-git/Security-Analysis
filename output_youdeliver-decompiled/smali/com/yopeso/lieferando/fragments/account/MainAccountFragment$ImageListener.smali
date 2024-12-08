.class Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$ImageListener;
.super Ljava/lang/Object;
.source "MainAccountFragment.java"

# interfaces
.implements Lcom/yopeso/lieferando/net/requests/base/VolleyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yopeso/lieferando/net/requests/base/VolleyListener",
        "<",
        "Lcom/yopeso/lieferando/model/user/UserData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;


# direct methods
.method private constructor <init>(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;)V
    .locals 0

    .prologue
    .line 1350
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$ImageListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$ImageListener;)V
    .locals 0

    .prologue
    .line 1350
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$ImageListener;-><init>(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;)V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 3
    .param p1, "exception"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 1401
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$ImageListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->access$20(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;)V

    .line 1402
    iget-object v0, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    iget v0, v0, Lcom/android/volley/NetworkResponse;->statusCode:I

    const/16 v1, 0x196

    if-ne v0, v1, :cond_0

    .line 1407
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$ImageListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$string;->image_too_big:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1411
    :goto_0
    return-void

    .line 1409
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$ImageListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    invoke-static {v0, p1}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->access$27(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;Lcom/android/volley/VolleyError;)V

    goto :goto_0
.end method

.method public onResponse(Lcom/yopeso/lieferando/model/user/UserData;)V
    .locals 9
    .param p1, "ud"    # Lcom/yopeso/lieferando/model/user/UserData;

    .prologue
    .line 1356
    :try_start_0
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$ImageListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "photo_uri"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1357
    .local v3, "photoUri":Ljava/lang/String;
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$ImageListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    invoke-virtual {v7}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/yopeso/lieferando/util/ImageUtils;->getThumbnail(Landroid/net/Uri;ZLandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1359
    .local v0, "bm":Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v4

    .line 1360
    .local v4, "userData":Lcom/yopeso/lieferando/model/user/UserData;
    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/user/UserData;->getImgUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1363
    const-string v5, "userphoto.dummy.cache"

    invoke-virtual {v4, v5}, Lcom/yopeso/lieferando/model/user/UserData;->setImgUrl(Ljava/lang/String;)V

    .line 1364
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v5

    invoke-interface {v5}, Lcom/yopeso/lieferando/net/config/IConfig;->isTakeaway()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$ImageListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/SettingsContent;->isFidelityPointsActive()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1368
    :cond_0
    const/4 v5, 0x0

    iget-object v6, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$ImageListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    sget v7, Lcom/yopeso/lieferando/R$string;->fidelity_points_picture:I

    invoke-virtual {v6, v7}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Lcom/yopeso/lieferando/dialogs/FidelityDialog;->newInstance(ILjava/lang/String;ZZ)Lcom/yopeso/lieferando/dialogs/FidelityDialog;

    move-result-object v2

    .line 1369
    .local v2, "fidelityDialog":Lcom/yopeso/lieferando/dialogs/FidelityDialog;
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$ImageListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Lcom/yopeso/lieferando/dialogs/FidelityDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 1373
    .end local v2    # "fidelityDialog":Lcom/yopeso/lieferando/dialogs/FidelityDialog;
    :cond_1
    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getImageManager()Lcom/novoda/imageloader/core/ImageManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/novoda/imageloader/core/ImageManager;->getCacheManager()Lcom/novoda/imageloader/core/cache/CacheManager;

    move-result-object v5

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/user/UserData;->getImgUrl()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v0}, Lcom/novoda/imageloader/core/cache/CacheManager;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 1375
    invoke-static {p1}, Lcom/yopeso/lieferando/util/UserStore;->setData(Lcom/yopeso/lieferando/model/user/UserData;)V

    .line 1376
    const-class v5, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$LoadImagesTask;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "UserStore: setData:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/user/UserData;->getImgUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v5

    new-instance v6, Lcom/yopeso/lieferando/events/ChangedProfilePhotoEvent;

    invoke-direct {v6}, Lcom/yopeso/lieferando/events/ChangedProfilePhotoEvent;-><init>()V

    invoke-virtual {v5, v6}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 1378
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$ImageListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v5

    new-instance v6, Lcom/yopeso/lieferando/net/requests/StatsRequest;

    new-instance v7, Lcom/yopeso/lieferando/net/listeners/StatsListener;

    invoke-direct {v7}, Lcom/yopeso/lieferando/net/listeners/StatsListener;-><init>()V

    invoke-direct {v6, v7}, Lcom/yopeso/lieferando/net/requests/StatsRequest;-><init>(Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v6}, Lcom/yopeso/lieferando/net/requests/StatsRequest;->withAuth()Lcom/yopeso/lieferando/net/requests/base/JsonRequest;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 1379
    new-instance v5, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$LoadImagesTask;

    iget-object v6, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$ImageListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/user/UserData;->getImgUrl()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v8

    invoke-virtual {v8}, Lcom/yopeso/lieferando/model/SettingsContent;->getmImage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/yopeso/lieferando/net/requests/base/JsonRequest;->getValidURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$LoadImagesTask;-><init>(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;Ljava/lang/String;)V

    const/4 v6, 0x0

    new-array v6, v6, [Landroid/graphics/Bitmap;

    instance-of v7, v5, Landroid/os/AsyncTask;

    if-nez v7, :cond_2

    invoke-virtual {v5, v6}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$LoadImagesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1397
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v3    # "photoUri":Ljava/lang/String;
    .end local v4    # "userData":Lcom/yopeso/lieferando/model/user/UserData;
    :goto_0
    return-void

    .line 1379
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    .restart local v3    # "photoUri":Ljava/lang/String;
    .restart local v4    # "userData":Lcom/yopeso/lieferando/model/user/UserData;
    :cond_2
    check-cast v5, Landroid/os/AsyncTask;

    invoke-static {v5, v6}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1392
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v3    # "photoUri":Ljava/lang/String;
    .end local v4    # "userData":Lcom/yopeso/lieferando/model/user/UserData;
    :catch_0
    move-exception v1

    .line 1393
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 1394
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 1395
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/yopeso/lieferando/model/user/UserData;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$ImageListener;->onResponse(Lcom/yopeso/lieferando/model/user/UserData;)V

    return-void
.end method
