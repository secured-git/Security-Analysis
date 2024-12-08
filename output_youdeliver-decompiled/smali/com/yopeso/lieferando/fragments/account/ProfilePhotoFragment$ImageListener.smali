.class Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment$ImageListener;
.super Ljava/lang/Object;
.source "ProfilePhotoFragment.java"

# interfaces
.implements Lcom/yopeso/lieferando/net/requests/base/VolleyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment;
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
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment;


# direct methods
.method private constructor <init>(Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment$ImageListener;->this$0:Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment;Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment$ImageListener;)V
    .locals 0

    .prologue
    .line 179
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment$ImageListener;-><init>(Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment;)V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 3
    .param p1, "exception"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 218
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment$ImageListener;->this$0:Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment;->access$0(Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment;)V

    .line 219
    iget-object v0, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    iget v0, v0, Lcom/android/volley/NetworkResponse;->statusCode:I

    const/16 v1, 0x196

    if-ne v0, v1, :cond_0

    .line 224
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment$ImageListener;->this$0:Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$string;->image_too_big:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 228
    :goto_0
    return-void

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment$ImageListener;->this$0:Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment;

    invoke-static {v0, p1}, Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment;->access$2(Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment;Lcom/android/volley/VolleyError;)V

    goto :goto_0
.end method

.method public onResponse(Lcom/yopeso/lieferando/model/user/UserData;)V
    .locals 9
    .param p1, "ud"    # Lcom/yopeso/lieferando/model/user/UserData;

    .prologue
    .line 182
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment$ImageListener;->this$0:Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment;

    invoke-static {v5}, Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment;->access$0(Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment;)V

    .line 185
    :try_start_0
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment$ImageListener;->this$0:Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "photo_uri"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 186
    .local v3, "photoUri":Ljava/lang/String;
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment$ImageListener;->this$0:Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment;

    invoke-virtual {v7}, Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/yopeso/lieferando/util/ImageUtils;->getThumbnail(Landroid/net/Uri;ZLandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 188
    .local v0, "bm":Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v4

    .line 189
    .local v4, "userData":Lcom/yopeso/lieferando/model/user/UserData;
    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/user/UserData;->getImgUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 192
    const-string v5, "userphoto.dummy.cache"

    invoke-virtual {v4, v5}, Lcom/yopeso/lieferando/model/user/UserData;->setImgUrl(Ljava/lang/String;)V

    .line 193
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v5

    invoke-interface {v5}, Lcom/yopeso/lieferando/net/config/IConfig;->isTakeaway()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment$ImageListener;->this$0:Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/SettingsContent;->isFidelityPointsActive()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 197
    :cond_0
    const/4 v5, 0x0

    iget-object v6, p0, Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment$ImageListener;->this$0:Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment;

    sget v7, Lcom/yopeso/lieferando/R$string;->fidelity_points_picture:I

    invoke-virtual {v6, v7}, Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Lcom/yopeso/lieferando/dialogs/FidelityDialog;->newInstance(ILjava/lang/String;ZZ)Lcom/yopeso/lieferando/dialogs/FidelityDialog;

    move-result-object v2

    .line 198
    .local v2, "fidelityDialog":Lcom/yopeso/lieferando/dialogs/FidelityDialog;
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment$ImageListener;->this$0:Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Lcom/yopeso/lieferando/dialogs/FidelityDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 202
    .end local v2    # "fidelityDialog":Lcom/yopeso/lieferando/dialogs/FidelityDialog;
    :cond_1
    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getImageManager()Lcom/novoda/imageloader/core/ImageManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/novoda/imageloader/core/ImageManager;->getCacheManager()Lcom/novoda/imageloader/core/cache/CacheManager;

    move-result-object v5

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/user/UserData;->getImgUrl()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v0}, Lcom/novoda/imageloader/core/cache/CacheManager;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 203
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment$ImageListener;->this$0:Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment;

    invoke-static {v5}, Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment;->access$1(Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 204
    invoke-static {p1}, Lcom/yopeso/lieferando/util/UserStore;->setData(Lcom/yopeso/lieferando/model/user/UserData;)V

    .line 206
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v5

    new-instance v6, Lcom/yopeso/lieferando/events/ChangedProfilePhotoEvent;

    invoke-direct {v6}, Lcom/yopeso/lieferando/events/ChangedProfilePhotoEvent;-><init>()V

    invoke-virtual {v5, v6}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 207
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment$ImageListener;->this$0:Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v5

    new-instance v6, Lcom/yopeso/lieferando/net/requests/StatsRequest;

    new-instance v7, Lcom/yopeso/lieferando/net/listeners/StatsListener;

    invoke-direct {v7}, Lcom/yopeso/lieferando/net/listeners/StatsListener;-><init>()V

    invoke-direct {v6, v7}, Lcom/yopeso/lieferando/net/requests/StatsRequest;-><init>(Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v6}, Lcom/yopeso/lieferando/net/requests/StatsRequest;->withAuth()Lcom/yopeso/lieferando/net/requests/base/JsonRequest;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 214
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v3    # "photoUri":Ljava/lang/String;
    .end local v4    # "userData":Lcom/yopeso/lieferando/model/user/UserData;
    :goto_0
    return-void

    .line 209
    :catch_0
    move-exception v1

    .line 210
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 211
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 212
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/yopeso/lieferando/model/user/UserData;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment$ImageListener;->onResponse(Lcom/yopeso/lieferando/model/user/UserData;)V

    return-void
.end method
