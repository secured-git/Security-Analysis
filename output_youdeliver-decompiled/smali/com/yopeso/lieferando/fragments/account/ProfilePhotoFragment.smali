.class public Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment;
.super Lcom/yopeso/lieferando/custom/LRFragment;
.source "ProfilePhotoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment$ImageListener;
    }
.end annotation


# static fields
.field public static final LIFERANDO_PROFILE_PHOTO:Ljava/lang/String; = "LiferandoProfilePhoto.jpg"

.field private static final PICK_PHOTO_REQUEST:I = 0xc

.field private static final TAG:Ljava/lang/String; = "ProfilePhotoFragment"

.field private static final TAKE_PHOTO_REQUEST:I = 0xb


# instance fields
.field private mProfilePhoto:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/yopeso/lieferando/custom/LRFragment;-><init>()V

    .line 67
    return-void
.end method

.method static synthetic access$0(Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment;->dismissLoadingIndicator()V

    return-void
.end method

.method static synthetic access$1(Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment;->mProfilePhoto:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment;Lcom/android/volley/VolleyError;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment;->handleNetworkError(Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method private copyUriToFileForUpload(Landroid/net/Uri;)V
    .locals 8
    .param p1, "source"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 241
    const/4 v2, 0x0

    .line 242
    .local v2, "in":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 243
    .local v4, "out":Ljava/io/FileOutputStream;
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 244
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const-string v6, "LiferandoProfilePhoto.jpg"

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/app/FragmentActivity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v4

    .line 245
    const/16 v5, 0x400

    new-array v0, v5, [B

    .line 246
    .local v0, "buffer":[B
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 247
    .local v3, "len":I
    :goto_0
    const/4 v5, -0x1

    if-ne v3, v5, :cond_2

    .line 251
    if-eqz v2, :cond_0

    .line 253
    :try_start_0
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :cond_0
    :goto_1
    if-eqz v4, :cond_1

    .line 260
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 265
    :cond_1
    :goto_2
    return-void

    .line 248
    :cond_2
    invoke-virtual {v4, v0, v7, v3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 249
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    goto :goto_0

    .line 254
    :catch_0
    move-exception v1

    .line 255
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 261
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 262
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method private getTempFile(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 146
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 147
    .local v0, "path":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 148
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 150
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, "LiferandoProfilePhoto.jpg"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private loadUserPhoto()V
    .locals 5

    .prologue
    .line 97
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v0

    .line 98
    .local v0, "user":Lcom/yopeso/lieferando/model/user/UserData;
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/UserData;->getImgUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment;->mProfilePhoto:Landroid/widget/ImageView;

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getTagFactoryNoAnim()Lcom/novoda/imageloader/core/model/ImageTagFactory;

    move-result-object v2

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/UserData;->getImgUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/yopeso/lieferando/util/ImageUtils;->getOptimizedUserProfileImage(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/novoda/imageloader/core/model/ImageTagFactory;->build(Ljava/lang/String;Landroid/content/Context;)Lcom/novoda/imageloader/core/model/ImageTag;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 100
    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getImageLoader()Lcom/novoda/imageloader/core/loader/Loader;

    move-result-object v1

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment;->mProfilePhoto:Landroid/widget/ImageView;

    invoke-interface {v1, v2}, Lcom/novoda/imageloader/core/loader/Loader;->load(Landroid/widget/ImageView;)V

    .line 102
    :cond_0
    return-void
.end method


# virtual methods
.method protected getTitle()I
    .locals 1

    .prologue
    .line 71
    sget v0, Lcom/yopeso/lieferando/R$string;->profilePhoto:I

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, -0x1

    .line 106
    invoke-super {p0, p1, p2, p3}, Lcom/yopeso/lieferando/custom/LRFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 107
    const-string v2, "ProfilePhotoFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, "onActivityResult "

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-ne p2, v4, :cond_3

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    if-ne p2, v4, :cond_2

    .line 109
    const/4 v0, 0x0

    .line 110
    .local v0, "uri":Landroid/net/Uri;
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_4

    .line 112
    :cond_0
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment;->getTempFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 116
    :goto_1
    if-eqz v0, :cond_1

    .line 117
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "photo_uri"

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 119
    :cond_1
    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment;->updateProfilePhoto(Landroid/net/Uri;)V

    .line 121
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_2
    return-void

    .line 107
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 114
    .restart local v0    # "uri":Landroid/net/Uri;
    :cond_4
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 125
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 126
    .local v0, "id":I
    sget v3, Lcom/yopeso/lieferando/R$id;->TakePhoto:I

    if-ne v0, v3, :cond_1

    .line 127
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 128
    .local v2, "takePhoto":Landroid/content/Intent;
    const-string v3, "output"

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment;->getTempFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 129
    const/16 v3, 0xb

    invoke-virtual {p0, v2, v3}, Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 135
    .end local v2    # "takePhoto":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    sget v3, Lcom/yopeso/lieferando/R$id;->ChoosePhoto:I

    if-ne v0, v3, :cond_0

    .line 131
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.PICK"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 132
    .local v1, "pickPhoto":Landroid/content/Intent;
    const-string v3, "image/*"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    const/16 v3, 0xc

    invoke-virtual {p0, v1, v3}, Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 76
    const-string v1, "ProfilePhotoFragment"

    const-string v2, "onCreateView"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    sget v1, Lcom/yopeso/lieferando/R$layout;->profile_photo_fragment:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 78
    .local v0, "view":Landroid/view/View;
    sget v1, Lcom/yopeso/lieferando/R$id;->ChoosePhoto:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    sget v1, Lcom/yopeso/lieferando/R$id;->TakePhoto:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v1

    if-nez v1, :cond_0

    .line 82
    sget v1, Lcom/yopeso/lieferando/R$id;->ChoosePhoto:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/SettingsContent;->getDynamicButtonFilter()Landroid/graphics/PorterDuffColorFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 83
    sget v1, Lcom/yopeso/lieferando/R$id;->TakePhoto:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/SettingsContent;->getDynamicButtonFilter()Landroid/graphics/PorterDuffColorFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 85
    :cond_0
    sget v1, Lcom/yopeso/lieferando/R$id;->ProfilePhoto:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment;->mProfilePhoto:Landroid/widget/ImageView;

    .line 87
    return-object v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 92
    invoke-super {p0}, Lcom/yopeso/lieferando/custom/LRFragment;->onResume()V

    .line 93
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment;->loadUserPhoto()V

    .line 94
    return-void
.end method

.method public updateProfilePhoto(Landroid/net/Uri;)V
    .locals 10
    .param p1, "imageUri"    # Landroid/net/Uri;

    .prologue
    .line 154
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 157
    .local v5, "params":Lorg/json/JSONObject;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment;->copyUriToFileForUpload(Landroid/net/Uri;)V

    .line 158
    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-static {p1, v6, v7}, Lcom/yopeso/lieferando/util/ImageUtils;->getThumbnail(Landroid/net/Uri;ZLandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 160
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 161
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x32

    invoke-virtual {v2, v6, v7, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 163
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 164
    .local v0, "b":[B
    const/4 v6, 0x0

    invoke-static {v0, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    .line 166
    .local v4, "encodedImage":Ljava/lang/String;
    const-string v6, "picture"

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 175
    .end local v0    # "b":[B
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "encodedImage":Ljava/lang/String;
    :goto_0
    sget v6, Lcom/yopeso/lieferando/R$string;->pleaseWait:I

    invoke-virtual {p0, v6}, Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment;->showLoadingIndicator(I)V

    .line 176
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v6

    new-instance v7, Lcom/yopeso/lieferando/net/requests/ImageRequest;

    new-instance v8, Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment$ImageListener;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment$ImageListener;-><init>(Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment;Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment$ImageListener;)V

    invoke-direct {v7, v5, v8}, Lcom/yopeso/lieferando/net/requests/ImageRequest;-><init>(Lorg/json/JSONObject;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v7}, Lcom/yopeso/lieferando/net/requests/ImageRequest;->withAuth()Lcom/yopeso/lieferando/net/requests/base/JsonRequest;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 177
    return-void

    .line 167
    :catch_0
    move-exception v3

    .line 168
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 169
    .end local v3    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v3

    .line 170
    .local v3, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 171
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v3

    .line 172
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
