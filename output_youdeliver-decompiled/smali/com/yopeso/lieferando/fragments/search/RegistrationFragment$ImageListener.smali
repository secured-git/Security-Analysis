.class Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$ImageListener;
.super Ljava/lang/Object;
.source "RegistrationFragment.java"

# interfaces
.implements Lcom/yopeso/lieferando/net/requests/base/VolleyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;
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
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;


# direct methods
.method private constructor <init>(Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;)V
    .locals 0

    .prologue
    .line 699
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$ImageListener;->this$0:Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$ImageListener;)V
    .locals 0

    .prologue
    .line 699
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$ImageListener;-><init>(Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;)V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 3
    .param p1, "exception"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 741
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$ImageListener;->this$0:Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->access$3(Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;)V

    .line 742
    const-class v0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ImageListener: onErrorResponse():"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    iget v2, v2, Lcom/android/volley/NetworkResponse;->statusCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    iget-object v0, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    iget v0, v0, Lcom/android/volley/NetworkResponse;->statusCode:I

    const/16 v1, 0x196

    if-ne v0, v1, :cond_0

    .line 748
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$ImageListener;->this$0:Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$string;->image_too_big:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 752
    :goto_0
    return-void

    .line 750
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$ImageListener;->this$0:Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;

    invoke-static {v0, p1}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->access$4(Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;Lcom/android/volley/VolleyError;)V

    goto :goto_0
.end method

.method public onResponse(Lcom/yopeso/lieferando/model/user/UserData;)V
    .locals 9
    .param p1, "ud"    # Lcom/yopeso/lieferando/model/user/UserData;

    .prologue
    .line 702
    const-class v5, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ImageListener: onResponse()"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    :try_start_0
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$ImageListener;->this$0:Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "photo_uri"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 706
    .local v3, "photoUri":Ljava/lang/String;
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$ImageListener;->this$0:Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;

    invoke-virtual {v7}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/yopeso/lieferando/util/ImageUtils;->getThumbnail(Landroid/net/Uri;ZLandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 708
    .local v0, "bm":Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v4

    .line 709
    .local v4, "userData":Lcom/yopeso/lieferando/model/user/UserData;
    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/user/UserData;->getImgUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 712
    const-string v5, "userphoto.dummy.cache"

    invoke-virtual {v4, v5}, Lcom/yopeso/lieferando/model/user/UserData;->setImgUrl(Ljava/lang/String;)V

    .line 713
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v5

    invoke-interface {v5}, Lcom/yopeso/lieferando/net/config/IConfig;->isTakeaway()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$ImageListener;->this$0:Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/SettingsContent;->isFidelityPointsActive()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 717
    :cond_0
    const/4 v5, 0x0

    iget-object v6, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$ImageListener;->this$0:Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;

    sget v7, Lcom/yopeso/lieferando/R$string;->fidelity_points_picture:I

    invoke-virtual {v6, v7}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Lcom/yopeso/lieferando/dialogs/FidelityDialog;->newInstance(ILjava/lang/String;ZZ)Lcom/yopeso/lieferando/dialogs/FidelityDialog;

    move-result-object v2

    .line 718
    .local v2, "fidelityDialog":Lcom/yopeso/lieferando/dialogs/FidelityDialog;
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$ImageListener;->this$0:Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Lcom/yopeso/lieferando/dialogs/FidelityDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 722
    .end local v2    # "fidelityDialog":Lcom/yopeso/lieferando/dialogs/FidelityDialog;
    :cond_1
    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getImageManager()Lcom/novoda/imageloader/core/ImageManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/novoda/imageloader/core/ImageManager;->getCacheManager()Lcom/novoda/imageloader/core/cache/CacheManager;

    move-result-object v5

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/user/UserData;->getImgUrl()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v0}, Lcom/novoda/imageloader/core/cache/CacheManager;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 724
    invoke-static {p1}, Lcom/yopeso/lieferando/util/UserStore;->setData(Lcom/yopeso/lieferando/model/user/UserData;)V

    .line 726
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v5

    new-instance v6, Lcom/yopeso/lieferando/events/ChangedProfilePhotoEvent;

    invoke-direct {v6}, Lcom/yopeso/lieferando/events/ChangedProfilePhotoEvent;-><init>()V

    invoke-virtual {v5, v6}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 727
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$ImageListener;->this$0:Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v5

    new-instance v6, Lcom/yopeso/lieferando/net/requests/StatsRequest;

    new-instance v7, Lcom/yopeso/lieferando/net/listeners/StatsListener;

    invoke-direct {v7}, Lcom/yopeso/lieferando/net/listeners/StatsListener;-><init>()V

    invoke-direct {v6, v7}, Lcom/yopeso/lieferando/net/requests/StatsRequest;-><init>(Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v6}, Lcom/yopeso/lieferando/net/requests/StatsRequest;->withAuth()Lcom/yopeso/lieferando/net/requests/base/JsonRequest;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 728
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$ImageListener;->this$0:Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;

    invoke-static {v5}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->access$3(Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;)V

    .line 730
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$ImageListener;->this$0:Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;

    invoke-static {v5}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->access$2(Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 737
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v3    # "photoUri":Ljava/lang/String;
    .end local v4    # "userData":Lcom/yopeso/lieferando/model/user/UserData;
    :goto_0
    return-void

    .line 732
    :catch_0
    move-exception v1

    .line 733
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 734
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 735
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/yopeso/lieferando/model/user/UserData;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$ImageListener;->onResponse(Lcom/yopeso/lieferando/model/user/UserData;)V

    return-void
.end method
