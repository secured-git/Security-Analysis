.class public Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;
.super Lcom/yopeso/lieferando/custom/LRFragment;
.source "MainAccountFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/yopeso/lieferando/callback/DatePickerCallBack;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/yopeso/lieferando/callback/TakePictureCallback;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi",
        "SimpleDateFormat"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$CustomerUpdateListener;,
        Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$FacebookUnlinkListener;,
        Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$ImageListener;,
        Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$LoadImagesTask;,
        Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$UploadImagesTask;
    }
.end annotation


# static fields
.field public static final LIFERANDO_PROFILE_PHOTO:Ljava/lang/String; = "LiferandoProfilePhoto.jpg"

.field private static final PICK_PHOTO_REQUEST:I = 0xc

.field public static final TAG:Ljava/lang/String; = "MainAccountFragment"

.field private static final TAKE_PHOTO_REQUEST:I = 0xb


# instance fields
.field private accountHeaderDetails:Landroid/widget/RelativeLayout;

.field private accountHeaderDetailsTOP:Landroid/widget/RelativeLayout;

.field private firstOrderTitle:Landroid/widget/TextView;

.field private full_name:Landroid/widget/TextView;

.field private gendarSet:Z

.field private genderSpinner:Landroid/widget/Spinner;

.field private icon_mask:Landroid/widget/ImageView;

.field private lastOrderTitle:Landroid/widget/TextView;

.field private loadImagesTask:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$LoadImagesTask;

.field private mBirthDate:Landroid/widget/TextView;

.field private mDay:I

.field private mEmail:Landroid/widget/EditText;

.field private mFavouritePost:Landroid/widget/ToggleButton;

.field private mGender:Landroid/widget/ImageView;

.field private mGenderLayout:Landroid/widget/LinearLayout;

.field private mGenderString:Ljava/lang/String;

.field private mInEditMode:Z

.field private mMonth:I

.field private mName:Landroid/widget/EditText;

.field private mNewsLetter:Landroid/widget/ToggleButton;

.field private mNickName:Landroid/widget/EditText;

.field private mOrderPost:Landroid/widget/ToggleButton;

.field private mPassword:Landroid/widget/EditText;

.field private mPasswordConfirmation:Landroid/widget/EditText;

.field private mPhone:Landroid/widget/EditText;

.field private mPhoto:Landroid/widget/ImageView;

.field private mPrename:Landroid/widget/EditText;

.field private mRatingPost:Landroid/widget/ToggleButton;

.field private mSetUserData:Z

.field private mTextWatcher:Landroid/text/TextWatcher;

.field private mUserData:Lcom/yopeso/lieferando/model/user/UserData;

.field private mYear:I

.field private shouldExit:Z

.field private takePictureButton:Landroid/widget/RelativeLayout;

.field private uploadImagesTask:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$UploadImagesTask;

.field private userFirstOrder:Landroid/widget/TextView;

.field private userLastOrder:Landroid/widget/TextView;

.field private userTotalOrders:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 183
    invoke-direct {p0}, Lcom/yopeso/lieferando/custom/LRFragment;-><init>()V

    .line 119
    iput-boolean v1, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mInEditMode:Z

    .line 137
    iput v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mYear:I

    .line 138
    iput v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mMonth:I

    .line 139
    iput v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mDay:I

    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mSetUserData:Z

    .line 150
    iput-boolean v1, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->gendarSet:Z

    .line 156
    iput-boolean v1, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->shouldExit:Z

    .line 689
    new-instance v0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$1;

    invoke-direct {v0, p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$1;-><init>(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;)V

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mTextWatcher:Landroid/text/TextWatcher;

    .line 184
    return-void
.end method

.method static synthetic access$0(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;)Lcom/yopeso/lieferando/model/user/UserData;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    return-object v0
.end method

.method static synthetic access$1(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;)Z
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mSetUserData:Z

    return v0
.end method

.method static synthetic access$10(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mPhoto:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$11(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->accountHeaderDetails:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$12(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->accountHeaderDetailsTOP:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$13(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->full_name:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$14(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->firstOrderTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$15(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->lastOrderTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$16(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->userFirstOrder:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$17(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->userLastOrder:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$18(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->userTotalOrders:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$19(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->icon_mask:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$20(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->dismissLoadingIndicator()V

    return-void
.end method

.method static synthetic access$21(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;Z)V
    .locals 0

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mInEditMode:Z

    return-void
.end method

.method static synthetic access$22(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;Z)V
    .locals 0

    .prologue
    .line 148
    iput-boolean p1, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mSetUserData:Z

    return-void
.end method

.method static synthetic access$23(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;)V
    .locals 0

    .prologue
    .line 860
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->saveDatesOnUserData()V

    return-void
.end method

.method static synthetic access$24(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;)V
    .locals 0

    .prologue
    .line 753
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->displayHeaderInfo()V

    return-void
.end method

.method static synthetic access$25(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;)Z
    .locals 1

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->shouldExit:Z

    return v0
.end method

.method static synthetic access$26(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;Z)V
    .locals 0

    .prologue
    .line 156
    iput-boolean p1, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->shouldExit:Z

    return-void
.end method

.method static synthetic access$27(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;Lcom/android/volley/VolleyError;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->handleNetworkError(Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method static synthetic access$28(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;)V
    .locals 0

    .prologue
    .line 450
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->displayFbRelatedButtons()V

    return-void
.end method

.method static synthetic access$29(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;Landroid/net/Uri;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 1423
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->copyUriToFileForUpload(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$3(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mPrename:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$30(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;)V
    .locals 0

    .prologue
    .line 815
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->setDateFromBirthDay()V

    return-void
.end method

.method static synthetic access$31(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;)I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mYear:I

    return v0
.end method

.method static synthetic access$32(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;)I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mMonth:I

    return v0
.end method

.method static synthetic access$33(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;)I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mDay:I

    return v0
.end method

.method static synthetic access$34(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mGenderString:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$35(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mGenderString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$36(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;Z)V
    .locals 0

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->gendarSet:Z

    return-void
.end method

.method static synthetic access$37(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mGender:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mNickName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$5(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mEmail:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$6(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mPhone:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$7(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$8(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mPasswordConfirmation:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$9(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mBirthDate:Landroid/widget/TextView;

    return-object v0
.end method

.method private copyUriToFileForUpload(Landroid/net/Uri;)V
    .locals 8
    .param p1, "source"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1424
    const/4 v2, 0x0

    .line 1425
    .local v2, "in":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 1426
    .local v4, "out":Ljava/io/FileOutputStream;
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 1427
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const-string v6, "LiferandoProfilePhoto.jpg"

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/app/FragmentActivity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v4

    .line 1428
    const/16 v5, 0x400

    new-array v0, v5, [B

    .line 1429
    .local v0, "buffer":[B
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 1430
    .local v3, "len":I
    :goto_0
    const/4 v5, -0x1

    if-ne v3, v5, :cond_2

    .line 1434
    if-eqz v2, :cond_0

    .line 1436
    :try_start_0
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1441
    :cond_0
    :goto_1
    if-eqz v4, :cond_1

    .line 1443
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1448
    :cond_1
    :goto_2
    return-void

    .line 1431
    :cond_2
    invoke-virtual {v4, v0, v7, v3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 1432
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    goto :goto_0

    .line 1437
    :catch_0
    move-exception v1

    .line 1438
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 1444
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 1445
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method private displayFbRelatedButtons()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 451
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    .line 452
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/UserData;->hasFacebookLinked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 453
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->facebookLinkBtn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sget v1, Lcom/yopeso/lieferando/R$string;->facebook_unlink:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 457
    :goto_0
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/UserData;->hasFacebookLinked()Z

    move-result v0

    if-nez v0, :cond_4

    .line 458
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->postFavLayout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 459
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->postFavLayout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 460
    :cond_0
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->postOrdersLayout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 461
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->postOrdersLayout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 462
    :cond_1
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->postRatingLayout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 463
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->postRatingLayout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 472
    :cond_2
    :goto_1
    return-void

    .line 455
    :cond_3
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->facebookLinkBtn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sget v1, Lcom/yopeso/lieferando/R$string;->facebook_link:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 465
    :cond_4
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->postFavLayout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 466
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->postFavLayout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 467
    :cond_5
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->postOrdersLayout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 468
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->postOrdersLayout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 469
    :cond_6
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->postRatingLayout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 470
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->postRatingLayout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private displayHeaderInfo()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 754
    const-string v0, "m"

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/UserData;->getGender()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 755
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mGender:Landroid/widget/ImageView;

    sget v1, Lcom/yopeso/lieferando/R$drawable;->icon_male:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 756
    const-string v0, "m"

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mGenderString:Ljava/lang/String;

    .line 757
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->genderSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 775
    :goto_0
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->user_full_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->full_name:Landroid/widget/TextView;

    .line 776
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->full_name:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/UserData;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 777
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mName:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/UserData;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 778
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mPrename:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/UserData;->getPreName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 779
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mNickName:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/UserData;->getNickName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 780
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mEmail:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/UserData;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 781
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mPhone:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 782
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mPhone:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/UserData;->getTelephone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 784
    :cond_0
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->setDateFromBirthDay()V

    .line 785
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mBirthDate:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->formatTheDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 787
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mNewsLetter:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/UserData;->getNewsletter()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 788
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mRatingPost:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/UserData;->getFacebookPostRate()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 789
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mFavouritePost:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/UserData;->getFacebookPostFavourites()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 790
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mOrderPost:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/UserData;->getFacebookPostOrder()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 792
    iput-boolean v2, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mSetUserData:Z

    .line 793
    return-void

    .line 763
    :cond_1
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mGender:Landroid/widget/ImageView;

    sget v1, Lcom/yopeso/lieferando/R$drawable;->icon_woman:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 764
    const-string v0, "w"

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mGenderString:Ljava/lang/String;

    .line 766
    iput-boolean v2, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->gendarSet:Z

    .line 767
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->genderSpinner:Landroid/widget/Spinner;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_0
.end method

.method private formatTheDate()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v4, -0x1

    .line 801
    iget v3, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mYear:I

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mMonth:I

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mDay:I

    if-eq v3, v4, :cond_0

    .line 802
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 803
    .local v0, "c":Ljava/util/Calendar;
    iget v3, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mYear:I

    iget v4, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mMonth:I

    iget v5, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mDay:I

    invoke-virtual {v0, v3, v4, v5}, Ljava/util/Calendar;->set(III)V

    .line 804
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 805
    .local v1, "d":Ljava/util/Date;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "dd.MM.yyyy"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 806
    .local v2, "format":Ljava/text/SimpleDateFormat;
    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 808
    .end local v0    # "c":Ljava/util/Calendar;
    .end local v1    # "d":Ljava/util/Date;
    .end local v2    # "format":Ljava/text/SimpleDateFormat;
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getJsonFromFields()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 884
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 886
    .local v1, "params":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "prename"

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mPrename:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 887
    const-string v2, "name"

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 888
    const-string v2, "email"

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mEmail:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 889
    const-string v2, "tel"

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mPhone:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 890
    const-string v2, "nickname"

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mNickName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 891
    const-string v2, "birthday"

    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->formatTheDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 892
    const-string v2, "sex"

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mGenderString:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 893
    const-string v2, "newsletter"

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mNewsLetter:Landroid/widget/ToggleButton;

    invoke-virtual {v3}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 894
    const-string v2, "facebookPostFavourite"

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mFavouritePost:Landroid/widget/ToggleButton;

    invoke-virtual {v3}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 895
    const-string v2, "facebookPostOrder"

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mOrderPost:Landroid/widget/ToggleButton;

    invoke-virtual {v3}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 896
    const-string v2, "facebookPostRate"

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mRatingPost:Landroid/widget/ToggleButton;

    invoke-virtual {v3}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 897
    const-string v2, "deletePicture"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 901
    :goto_0
    return-object v1

    .line 898
    :catch_0
    move-exception v0

    .line 899
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private getTempFile(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1274
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1275
    .local v0, "path":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1276
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 1278
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, "LiferandoProfilePhoto.jpg"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private loadUserPhoto()V
    .locals 4

    .prologue
    .line 519
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/UserData;->getImgUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 520
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getTagFactoryUserPhoto()Lcom/novoda/imageloader/core/model/ImageTagFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/UserData;->getImgUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/yopeso/lieferando/util/ImageUtils;->getOptimizedUserImage(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/novoda/imageloader/core/model/ImageTagFactory;->build(Ljava/lang/String;Landroid/content/Context;)Lcom/novoda/imageloader/core/model/ImageTag;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 524
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->loadImagesTask:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$LoadImagesTask;

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->loadImagesTask:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$LoadImagesTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$LoadImagesTask;->cancel(Z)Z

    .line 527
    :cond_0
    new-instance v0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$LoadImagesTask;

    invoke-direct {v0, p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$LoadImagesTask;-><init>(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;)V

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->loadImagesTask:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$LoadImagesTask;

    .line 528
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->loadImagesTask:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$LoadImagesTask;

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/graphics/Bitmap;

    instance-of v2, v0, Landroid/os/AsyncTask;

    if-nez v2, :cond_1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$LoadImagesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 575
    :goto_0
    return-void

    .line 528
    :cond_1
    check-cast v0, Landroid/os/AsyncTask;

    invoke-static {v0, v1}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 573
    :cond_2
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mPhoto:Landroid/widget/ImageView;

    sget v1, Lcom/yopeso/lieferando/R$drawable;->no_user_photo:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private saveDatesOnUserData()V
    .locals 3

    .prologue
    .line 861
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/user/UserData;->setName(Ljava/lang/String;)V

    .line 862
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mPrename:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/user/UserData;->setPreName(Ljava/lang/String;)V

    .line 863
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mNickName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/user/UserData;->setNickName(Ljava/lang/String;)V

    .line 864
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mEmail:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/user/UserData;->setEmail(Ljava/lang/String;)V

    .line 865
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mPhone:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/user/UserData;->setTelephone(Ljava/lang/String;)V

    .line 866
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->formatTheDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/user/UserData;->setBirthDay(Ljava/lang/String;)V

    .line 867
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mGenderString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/user/UserData;->setGender(Ljava/lang/String;)V

    .line 868
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mNewsLetter:Landroid/widget/ToggleButton;

    invoke-virtual {v2}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/user/UserData;->setNewsletter(Z)V

    .line 869
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mFavouritePost:Landroid/widget/ToggleButton;

    invoke-virtual {v2}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/user/UserData;->setFacebookPostFavourites(Z)V

    .line 870
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mOrderPost:Landroid/widget/ToggleButton;

    invoke-virtual {v2}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/user/UserData;->setFacebookPostOrder(Z)V

    .line 871
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mRatingPost:Landroid/widget/ToggleButton;

    invoke-virtual {v2}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/user/UserData;->setFacebookPostRate(Z)V

    .line 873
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v0

    .line 874
    .local v0, "cart":Lcom/yopeso/lieferando/model/cart/ShoppingCart;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getDeliveryAddress()Lcom/yopeso/lieferando/model/user/Location;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 875
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getDeliveryAddress()Lcom/yopeso/lieferando/model/user/Location;

    move-result-object v1

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mPhone:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/user/Location;->setPhone(Ljava/lang/String;)V

    .line 876
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getDeliveryAddress()Lcom/yopeso/lieferando/model/user/Location;

    move-result-object v1

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mEmail:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/user/Location;->setEmail(Ljava/lang/String;)V

    .line 878
    :cond_0
    return-void
.end method

.method private setDateFromBirthDay()V
    .locals 6

    .prologue
    .line 816
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "dd.MM.yyyy"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 817
    .local v3, "format":Ljava/text/SimpleDateFormat;
    const/4 v1, 0x0

    .line 819
    .local v1, "date":Ljava/util/Date;
    iget v4, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mYear:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 821
    :try_start_0
    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/user/UserData;->getBirthDay()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 822
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 823
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 824
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iput v4, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mYear:I

    .line 825
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iput v4, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mMonth:I

    .line 826
    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iput v4, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mDay:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 842
    .end local v0    # "cal":Ljava/util/Calendar;
    :cond_0
    :goto_0
    return-void

    .line 827
    :catch_0
    move-exception v2

    .line 828
    .local v2, "e":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 830
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_1
    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mBirthDate:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 832
    :try_start_1
    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mBirthDate:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 833
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 834
    .restart local v0    # "cal":Ljava/util/Calendar;
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 835
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iput v4, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mYear:I

    .line 836
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iput v4, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mMonth:I

    .line 837
    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iput v4, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mDay:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 838
    .end local v0    # "cal":Ljava/util/Calendar;
    :catch_1
    move-exception v2

    .line 839
    .restart local v2    # "e":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public choosePicture()V
    .locals 2

    .prologue
    .line 1459
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1460
    .local v0, "pickPhoto":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1461
    const/16 v1, 0xc

    invoke-virtual {p0, v0, v1}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1462
    return-void
.end method

.method protected doCancelChanges()V
    .locals 3

    .prologue
    .line 1027
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mSetUserData:Z

    .line 1028
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->displayHeaderInfo()V

    .line 1030
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1031
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1032
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1033
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1036
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method protected doSaveChanges()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1042
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/SettingsContent;->getRegexp()Ljava/util/Map;

    move-result-object v3

    .line 1044
    .local v3, "regexp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/yopeso/lieferando/model/user/Regexp;>;"
    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1045
    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mPasswordConfirmation:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1046
    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mPasswordConfirmation:Landroid/widget/EditText;

    sget v5, Lcom/yopeso/lieferando/R$string;->confirm_password:I

    invoke-virtual {p0, v5}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 1076
    :cond_0
    :goto_0
    return-void

    .line 1047
    :cond_1
    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mPasswordConfirmation:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x6

    if-ge v4, v5, :cond_2

    .line 1048
    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mPasswordConfirmation:Landroid/widget/EditText;

    sget v5, Lcom/yopeso/lieferando/R$string;->pass_too_short:I

    invoke-virtual {p0, v5}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1049
    :cond_2
    const-string v4, "password"

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v4, "password"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yopeso/lieferando/model/user/Regexp;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/user/Regexp;->getFormat()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1050
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mPassword:Landroid/widget/EditText;

    const-string v4, "password"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yopeso/lieferando/model/user/Regexp;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/user/Regexp;->getMsg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1053
    :cond_3
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->validateTheForm()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1055
    :try_start_0
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getJsonFromFields()Lorg/json/JSONObject;

    move-result-object v2

    .line 1056
    .local v2, "params":Lorg/json/JSONObject;
    const-string v4, "password"

    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1057
    sget v4, Lcom/yopeso/lieferando/R$string;->pleaseWait:I

    invoke-virtual {p0, v4}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->showLoadingIndicator(I)V

    .line 1058
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v4

    new-instance v5, Lcom/yopeso/lieferando/net/requests/CustomerEditRequest;

    new-instance v6, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$CustomerUpdateListener;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$CustomerUpdateListener;-><init>(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$CustomerUpdateListener;)V

    invoke-direct {v5, v2, v6}, Lcom/yopeso/lieferando/net/requests/CustomerEditRequest;-><init>(Lorg/json/JSONObject;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v5}, Lcom/yopeso/lieferando/net/requests/CustomerEditRequest;->withAuth()Lcom/yopeso/lieferando/net/requests/base/JsonRequest;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1059
    .end local v2    # "params":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 1060
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 1065
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_4
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 1067
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-string v5, "input_method"

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 1068
    .local v1, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v1, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1070
    .end local v1    # "inputManager":Landroid/view/inputmethod/InputMethodManager;
    :cond_5
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->validateTheForm()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1072
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getJsonFromFields()Lorg/json/JSONObject;

    move-result-object v2

    .line 1073
    .restart local v2    # "params":Lorg/json/JSONObject;
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v4

    new-instance v5, Lcom/yopeso/lieferando/net/requests/CustomerEditRequest;

    new-instance v6, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$CustomerUpdateListener;

    invoke-direct {v6, p0, v7}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$CustomerUpdateListener;-><init>(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$CustomerUpdateListener;)V

    invoke-direct {v5, v2, v6}, Lcom/yopeso/lieferando/net/requests/CustomerEditRequest;-><init>(Lorg/json/JSONObject;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v5}, Lcom/yopeso/lieferando/net/requests/CustomerEditRequest;->withAuth()Lcom/yopeso/lieferando/net/requests/base/JsonRequest;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    goto/16 :goto_0
.end method

.method protected getTitle()I
    .locals 1

    .prologue
    .line 195
    sget v0, Lcom/yopeso/lieferando/R$string;->main_account:I

    return v0
.end method

.method protected hideSaveAndCancelButtons()V
    .locals 1

    .prologue
    .line 853
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mInEditMode:Z

    .line 854
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->invalidateOptionsMenu()V

    .line 855
    return-void
.end method

.method public isInEditMode()Z
    .locals 1

    .prologue
    .line 1236
    iget-boolean v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mInEditMode:Z

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 265
    invoke-super {p0, p1}, Lcom/yopeso/lieferando/custom/LRFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 267
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    .line 268
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->displayFbRelatedButtons()V

    .line 270
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->CustomerPreName:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mPrename:Landroid/widget/EditText;

    .line 271
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mPrename:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 272
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->CustomerName:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mName:Landroid/widget/EditText;

    .line 273
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mName:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 274
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->CustomerNickName:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mNickName:Landroid/widget/EditText;

    .line 275
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mNickName:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 276
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->CustomerEmailAddress:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mEmail:Landroid/widget/EditText;

    .line 277
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mEmail:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 278
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->CustomerPhoneNr:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mPhone:Landroid/widget/EditText;

    .line 279
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mPhone:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 280
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->CustomerNewPassword:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mPassword:Landroid/widget/EditText;

    .line 281
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mPassword:Landroid/widget/EditText;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 282
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mPassword:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 283
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->CustomerNewPassConfirmation:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mPasswordConfirmation:Landroid/widget/EditText;

    .line 284
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mPasswordConfirmation:Landroid/widget/EditText;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 285
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mPasswordConfirmation:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 286
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->CustomerBirthDate:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mBirthDate:Landroid/widget/TextView;

    .line 287
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mBirthDate:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 288
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mBirthDate:Landroid/widget/TextView;

    new-instance v1, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$4;

    invoke-direct {v1, p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$4;-><init>(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->CustomerImageGender:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mGender:Landroid/widget/ImageView;

    .line 299
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->CustomerGender:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mGenderLayout:Landroid/widget/LinearLayout;

    .line 300
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mGenderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->AccountDetailsPhoto:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mPhoto:Landroid/widget/ImageView;

    .line 303
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->user_date_first_order:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->userFirstOrder:Landroid/widget/TextView;

    .line 304
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->user_date_last_order:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->userLastOrder:Landroid/widget/TextView;

    .line 305
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/UserData;->getOrdersCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->userFirstOrder:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/UserData;->getDataFirstOrder()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->userLastOrder:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/UserData;->getDataLastOrder()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    :cond_0
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->total_amount:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->userTotalOrders:Landroid/widget/TextView;

    .line 310
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    if-eqz v0, :cond_1

    .line 311
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->userTotalOrders:Landroid/widget/TextView;

    sget v1, Lcom/yopeso/lieferando/R$string;->total_amount:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/user/UserData;->getOrdersCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    :cond_1
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->newsletterToggleButton:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mNewsLetter:Landroid/widget/ToggleButton;

    .line 314
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->postOrdersToggleButton:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mOrderPost:Landroid/widget/ToggleButton;

    .line 315
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->postRatingsToggleButton:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mRatingPost:Landroid/widget/ToggleButton;

    .line 316
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->postFavouritesToggleButton:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mFavouritePost:Landroid/widget/ToggleButton;

    .line 318
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mNewsLetter:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 319
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mOrderPost:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 320
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mRatingPost:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 321
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mFavouritePost:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 324
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->firstOrderTitle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->firstOrderTitle:Landroid/widget/TextView;

    .line 325
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->lastOrderTitle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->lastOrderTitle:Landroid/widget/TextView;

    .line 326
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->icon_mask:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->icon_mask:Landroid/widget/ImageView;

    .line 327
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->genderSpinner:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->genderSpinner:Landroid/widget/Spinner;

    .line 328
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->genderSpinner:Landroid/widget/Spinner;

    new-instance v1, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$5;

    invoke-direct {v1, p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$5;-><init>(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 370
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->takePictureButton:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->takePictureButton:Landroid/widget/RelativeLayout;

    .line 371
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->AccountHeaderDetails:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->accountHeaderDetails:Landroid/widget/RelativeLayout;

    .line 372
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->AccountHeaderDetailsTOP:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->accountHeaderDetailsTOP:Landroid/widget/RelativeLayout;

    .line 374
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v0

    if-nez v0, :cond_2

    .line 375
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->takePictureButton:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/SettingsContent;->getDynamicButtonFilter()Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 377
    :cond_2
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->takePictureButton:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$6;

    invoke-direct {v1, p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$6;-><init>(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 389
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 390
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->loadUserPhoto()V

    .line 391
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->displayHeaderInfo()V

    .line 444
    :cond_3
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    const/4 v6, -0x1

    const/4 v2, 0x1

    .line 1241
    invoke-super {p0, p1, p2, p3}, Lcom/yopeso/lieferando/custom/LRFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 1242
    const-string v4, "MainAccountFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "onActivityResult "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    if-ne p2, v6, :cond_4

    move v1, v2

    :goto_0
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    if-ne p2, v6, :cond_3

    .line 1244
    const/4 v0, 0x0

    .line 1245
    .local v0, "uri":Landroid/net/Uri;
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_5

    .line 1247
    :cond_0
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getTempFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 1251
    :goto_1
    if-eqz v0, :cond_1

    .line 1252
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v4, "photo_uri"

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1255
    :cond_1
    sget v1, Lcom/yopeso/lieferando/R$string;->pleaseWait:I

    invoke-virtual {p0, v1}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->showLoadingIndicator(I)V

    .line 1257
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->uploadImagesTask:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$UploadImagesTask;

    if-eqz v1, :cond_2

    .line 1258
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->uploadImagesTask:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$UploadImagesTask;

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$UploadImagesTask;->cancel(Z)Z

    .line 1260
    :cond_2
    new-instance v1, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$UploadImagesTask;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$UploadImagesTask;-><init>(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$UploadImagesTask;)V

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->uploadImagesTask:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$UploadImagesTask;

    .line 1261
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->uploadImagesTask:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$UploadImagesTask;

    new-array v2, v2, [Landroid/net/Uri;

    aput-object v0, v2, v3

    instance-of v3, v1, Landroid/os/AsyncTask;

    if-nez v3, :cond_6

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$UploadImagesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1263
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_3
    :goto_2
    return-void

    :cond_4
    move v1, v3

    .line 1242
    goto :goto_0

    .line 1249
    .restart local v0    # "uri":Landroid/net/Uri;
    :cond_5
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    .line 1261
    :cond_6
    check-cast v1, Landroid/os/AsyncTask;

    invoke-static {v1, v2}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_2
.end method

.method public onBackKeyPressed()V
    .locals 5

    .prologue
    .line 206
    iget-boolean v2, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mInEditMode:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 207
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 208
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    sget v2, Lcom/yopeso/lieferando/R$string;->data_not_saved:I

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$string;->yes:I

    new-instance v4, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$2;

    invoke-direct {v4, p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$2;-><init>(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 214
    sget v3, Lcom/yopeso/lieferando/R$string;->no:I

    new-instance v4, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$3;

    invoke-direct {v4, p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$3;-><init>(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 221
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 222
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 223
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 225
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "dialog":Landroid/app/AlertDialog;
    :cond_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 1182
    iget-boolean v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mSetUserData:Z

    if-nez v0, :cond_0

    .line 1183
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->showSaveAndCancelButtons()V

    .line 1185
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1080
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    .line 1081
    .local v3, "id":I
    sget v7, Lcom/yopeso/lieferando/R$id;->CustomerGender:I

    if-ne v3, v7, :cond_2

    .line 1082
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 1083
    .local v4, "inflater":Landroid/view/LayoutInflater;
    sget v8, Lcom/yopeso/lieferando/R$layout;->gender_dialog:I

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    sget v9, Lcom/yopeso/lieferando/R$id;->gender_layout:I

    invoke-virtual {v7, v9}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v4, v8, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1084
    .local v1, "dialog":Landroid/view/View;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1085
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1086
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 1087
    .local v2, "genderDialog":Landroid/app/AlertDialog;
    sget v7, Lcom/yopeso/lieferando/R$id;->MaleButton:I

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 1088
    .local v5, "maleImg":Landroid/widget/ImageView;
    sget v7, Lcom/yopeso/lieferando/R$id;->WomanButton:I

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 1089
    .local v6, "womanImg":Landroid/widget/ImageView;
    iget-object v7, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mGenderString:Ljava/lang/String;

    const-string v8, "m"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1090
    sget v7, Lcom/yopeso/lieferando/R$drawable;->gender_male_act:I

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1091
    sget v7, Lcom/yopeso/lieferando/R$drawable;->gender_woman:I

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1096
    :goto_0
    new-instance v7, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$7;

    invoke-direct {v7, p0, v2}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$7;-><init>(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;Landroid/app/AlertDialog;)V

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1105
    new-instance v7, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$8;

    invoke-direct {v7, p0, v2}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$8;-><init>(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;Landroid/app/AlertDialog;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1114
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 1128
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "dialog":Landroid/view/View;
    .end local v2    # "genderDialog":Landroid/app/AlertDialog;
    .end local v4    # "inflater":Landroid/view/LayoutInflater;
    .end local v5    # "maleImg":Landroid/widget/ImageView;
    .end local v6    # "womanImg":Landroid/widget/ImageView;
    :cond_0
    :goto_1
    return-void

    .line 1093
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .restart local v1    # "dialog":Landroid/view/View;
    .restart local v2    # "genderDialog":Landroid/app/AlertDialog;
    .restart local v4    # "inflater":Landroid/view/LayoutInflater;
    .restart local v5    # "maleImg":Landroid/widget/ImageView;
    .restart local v6    # "womanImg":Landroid/widget/ImageView;
    :cond_1
    sget v7, Lcom/yopeso/lieferando/R$drawable;->gender_male:I

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1094
    sget v7, Lcom/yopeso/lieferando/R$drawable;->gender_woman_act:I

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1115
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "dialog":Landroid/view/View;
    .end local v2    # "genderDialog":Landroid/app/AlertDialog;
    .end local v4    # "inflater":Landroid/view/LayoutInflater;
    .end local v5    # "maleImg":Landroid/widget/ImageView;
    .end local v6    # "womanImg":Landroid/widget/ImageView;
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    sget v8, Lcom/yopeso/lieferando/R$id;->facebookLinkBtn:I

    if-ne v7, v8, :cond_0

    .line 1116
    iget-object v7, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/user/UserData;->hasFacebookLinked()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1117
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->unlinkFacebook()V

    goto :goto_1

    .line 1119
    :cond_3
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    check-cast v7, Lcom/yopeso/lieferando/activity/BaseSearchActivity;

    invoke-virtual {v7}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->requireFBLogin()V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 188
    invoke-super {p0, p1}, Lcom/yopeso/lieferando/custom/LRFragment;->onCreate(Landroid/os/Bundle;)V

    .line 189
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->setHasOptionsMenu(Z)V

    .line 190
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mInEditMode:Z

    .line 191
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;
    .param p2, "inflater"    # Lcom/actionbarsherlock/view/MenuInflater;

    .prologue
    .line 240
    invoke-super {p0, p1, p2}, Lcom/yopeso/lieferando/custom/LRFragment;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V

    .line 241
    iget-boolean v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mInEditMode:Z

    if-eqz v0, :cond_0

    .line 242
    sget v0, Lcom/yopeso/lieferando/R$menu;->user_edit_menu:I

    invoke-virtual {p2, v0, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 244
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 200
    sget v1, Lcom/yopeso/lieferando/R$layout;->main_account_fragment:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 201
    .local v0, "view":Landroid/view/View;
    sget v1, Lcom/yopeso/lieferando/R$id;->facebookLinkBtn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 229
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->loadImagesTask:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$LoadImagesTask;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->loadImagesTask:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$LoadImagesTask;

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$LoadImagesTask;->cancel(Z)Z

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->uploadImagesTask:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$UploadImagesTask;

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->uploadImagesTask:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$UploadImagesTask;

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$UploadImagesTask;->cancel(Z)Z

    .line 235
    :cond_1
    invoke-super {p0}, Lcom/yopeso/lieferando/custom/LRFragment;->onDestroy()V

    .line 236
    return-void
.end method

.method public onEvent(Lcom/yopeso/lieferando/events/AuthenticationEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/yopeso/lieferando/events/AuthenticationEvent;

    .prologue
    .line 500
    const-string v0, "MainAccountFragment"

    const-string v1, "AuthenticationEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->isLoggedIn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 503
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 505
    :cond_0
    return-void
.end method

.method public onEvent(Lcom/yopeso/lieferando/events/FacebookUpdateEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/yopeso/lieferando/events/FacebookUpdateEvent;

    .prologue
    .line 493
    const-string v0, "MainAccountFragment"

    const-string v1, "FacebookUpdateEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->displayFbRelatedButtons()V

    .line 495
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->loadUserPhoto()V

    .line 496
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->displayHeaderInfo()V

    .line 497
    return-void
.end method

.method public onEvent(Lcom/yopeso/lieferando/events/UserDataUpdatedEvent;)V
    .locals 5
    .param p1, "event"    # Lcom/yopeso/lieferando/events/UserDataUpdatedEvent;

    .prologue
    .line 508
    const-string v0, "MainAccountFragment"

    const-string v1, "UserDataUpdatedEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    .line 510
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/UserData;->getOrdersCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->userFirstOrder:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/UserData;->getDataFirstOrder()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 512
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->userLastOrder:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/UserData;->getDataLastOrder()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->userTotalOrders:Landroid/widget/TextView;

    sget v1, Lcom/yopeso/lieferando/R$string;->total_amount:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/user/UserData;->getOrdersCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 515
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 248
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mInEditMode:Z

    .line 249
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lcom/yopeso/lieferando/R$id;->save_user:I

    if-ne v1, v2, :cond_1

    .line 250
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->validateTheForm()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 251
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->doSaveChanges()V

    .line 252
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->invalidateOptionsMenu()V

    .line 260
    :cond_0
    :goto_0
    return v0

    .line 255
    :cond_1
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lcom/yopeso/lieferando/R$id;->cancel_edit:I

    if-ne v1, v2, :cond_2

    .line 256
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->doCancelChanges()V

    .line 257
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->invalidateOptionsMenu()V

    goto :goto_0

    .line 260
    :cond_2
    invoke-super {p0, p1}, Lcom/yopeso/lieferando/custom/LRFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 477
    invoke-super {p0}, Lcom/yopeso/lieferando/custom/LRFragment;->onStart()V

    .line 478
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 479
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 481
    :cond_0
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/net/requests/StatsRequest;

    new-instance v2, Lcom/yopeso/lieferando/net/listeners/StatsListener;

    invoke-direct {v2}, Lcom/yopeso/lieferando/net/listeners/StatsListener;-><init>()V

    invoke-direct {v1, v2}, Lcom/yopeso/lieferando/net/requests/StatsRequest;-><init>(Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v1}, Lcom/yopeso/lieferando/net/requests/StatsRequest;->withAuth()Lcom/yopeso/lieferando/net/requests/base/JsonRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 482
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 486
    invoke-super {p0}, Lcom/yopeso/lieferando/custom/LRFragment;->onStop()V

    .line 487
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 488
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 490
    :cond_0
    return-void
.end method

.method public rotateBitmapOrientation(Ljava/lang/String;)V
    .locals 18
    .param p1, "photoFilePath"    # Ljava/lang/String;

    .prologue
    .line 640
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 641
    .local v8, "bounds":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 642
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Lcom/newrelic/agent/android/instrumentation/BitmapFactoryInstrumentation;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 643
    new-instance v11, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v11}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 644
    .local v11, "opts":Landroid/graphics/BitmapFactory$Options;
    move-object/from16 v0, p1

    invoke-static {v0, v11}, Lcom/newrelic/agent/android/instrumentation/BitmapFactoryInstrumentation;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 645
    .local v1, "bm":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_3

    .line 648
    const/16 v16, 0x0

    .line 650
    .local v16, "rotatedBitmap":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v10, Landroid/media/ExifInterface;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 651
    .local v10, "exif":Landroid/media/ExifInterface;
    const-string v2, "Orientation"

    invoke-virtual {v10, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 652
    .local v12, "orientString":Ljava/lang/String;
    if-eqz v12, :cond_4

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 653
    .local v13, "orientation":I
    :goto_0
    const/16 v17, 0x0

    .line 654
    .local v17, "rotationAngle":I
    const/4 v2, 0x6

    if-ne v13, v2, :cond_0

    const/16 v17, 0x5a

    .line 655
    :cond_0
    const/4 v2, 0x3

    if-ne v13, v2, :cond_1

    const/16 v17, 0xb4

    .line 656
    :cond_1
    const/16 v2, 0x8

    if-ne v13, v2, :cond_2

    const/16 v17, 0x10e

    .line 658
    :cond_2
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 659
    .local v6, "matrix":Landroid/graphics/Matrix;
    move/from16 v0, v17

    int-to-float v2, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {v6, v2, v3, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 660
    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v5, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    .line 665
    .end local v6    # "matrix":Landroid/graphics/Matrix;
    .end local v10    # "exif":Landroid/media/ExifInterface;
    .end local v12    # "orientString":Ljava/lang/String;
    .end local v13    # "orientation":I
    .end local v17    # "rotationAngle":I
    :goto_1
    const/4 v14, 0x0

    .line 667
    .local v14, "out":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v15, Ljava/io/FileOutputStream;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 668
    .end local v14    # "out":Ljava/io/FileOutputStream;
    .local v15, "out":Ljava/io/FileOutputStream;
    :try_start_2
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x32

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3, v15}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 674
    if-eqz v15, :cond_3

    .line 675
    :try_start_3
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 683
    .end local v15    # "out":Ljava/io/FileOutputStream;
    .end local v16    # "rotatedBitmap":Landroid/graphics/Bitmap;
    :cond_3
    :goto_2
    return-void

    .line 652
    .restart local v10    # "exif":Landroid/media/ExifInterface;
    .restart local v12    # "orientString":Ljava/lang/String;
    .restart local v16    # "rotatedBitmap":Landroid/graphics/Bitmap;
    :cond_4
    const/4 v13, 0x1

    goto :goto_0

    .line 661
    .end local v10    # "exif":Landroid/media/ExifInterface;
    .end local v12    # "orientString":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 662
    .local v9, "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 670
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v14    # "out":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v9

    .line 671
    .local v9, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_4
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 674
    if-eqz v14, :cond_3

    .line 675
    :try_start_5
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 677
    :catch_2
    move-exception v9

    .line 678
    .local v9, "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 672
    .end local v9    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 674
    :goto_4
    if-eqz v14, :cond_5

    .line 675
    :try_start_6
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 680
    :cond_5
    :goto_5
    throw v2

    .line 677
    :catch_3
    move-exception v9

    .line 678
    .restart local v9    # "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 677
    .end local v9    # "e":Ljava/io/IOException;
    .end local v14    # "out":Ljava/io/FileOutputStream;
    .restart local v15    # "out":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v9

    .line 678
    .restart local v9    # "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 672
    .end local v9    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v2

    move-object v14, v15

    .end local v15    # "out":Ljava/io/FileOutputStream;
    .restart local v14    # "out":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 670
    .end local v14    # "out":Ljava/io/FileOutputStream;
    .restart local v15    # "out":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v9

    move-object v14, v15

    .end local v15    # "out":Ljava/io/FileOutputStream;
    .restart local v14    # "out":Ljava/io/FileOutputStream;
    goto :goto_3
.end method

.method public setDate(III)V
    .locals 7
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .prologue
    .line 1167
    iput p1, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mYear:I

    .line 1168
    iput p2, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mMonth:I

    .line 1169
    iput p3, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mDay:I

    .line 1171
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1172
    .local v0, "c":Ljava/util/Calendar;
    iget v4, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mYear:I

    iget v5, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mMonth:I

    iget v6, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mDay:I

    invoke-virtual {v0, v4, v5, v6}, Ljava/util/Calendar;->set(III)V

    .line 1173
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 1174
    .local v1, "d":Ljava/util/Date;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "dd.MM.yyyy"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1175
    .local v3, "newFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v3, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 1177
    .local v2, "dateString":Ljava/lang/String;
    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mBirthDate:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1178
    return-void
.end method

.method protected showSaveAndCancelButtons()V
    .locals 1

    .prologue
    .line 848
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mInEditMode:Z

    .line 849
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->invalidateOptionsMenu()V

    .line 850
    return-void
.end method

.method public takePicture()V
    .locals 3

    .prologue
    .line 1452
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1453
    .local v0, "takePhoto":Landroid/content/Intent;
    const-string v1, "output"

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getTempFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1454
    const/16 v1, 0xb

    invoke-virtual {p0, v0, v1}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1455
    return-void
.end method

.method public unlinkFacebook()V
    .locals 3

    .prologue
    .line 1131
    sget v0, Lcom/yopeso/lieferando/R$string;->pleaseWait:I

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->showLoadingIndicator(I)V

    .line 1132
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/net/requests/UnlinkFacebookRequest;

    new-instance v2, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$FacebookUnlinkListener;

    invoke-direct {v2, p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$FacebookUnlinkListener;-><init>(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;)V

    invoke-direct {v1, v2}, Lcom/yopeso/lieferando/net/requests/UnlinkFacebookRequest;-><init>(Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v1}, Lcom/yopeso/lieferando/net/requests/UnlinkFacebookRequest;->withAuth()Lcom/yopeso/lieferando/net/requests/base/JsonRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 1133
    return-void
.end method

.method protected validateTheForm()Z
    .locals 9

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x2

    const/16 v6, 0x19

    const/4 v5, 0x0

    .line 911
    const/4 v0, 0x1

    .line 912
    .local v0, "done":Z
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/SettingsContent;->getRegexp()Ljava/util/Map;

    move-result-object v1

    .line 914
    .local v1, "regexp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/yopeso/lieferando/model/user/Regexp;>;"
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 915
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mName:Landroid/widget/EditText;

    sget v3, Lcom/yopeso/lieferando/R$string;->mandatory_field_error_message:I

    invoke-virtual {p0, v3}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 916
    const/4 v0, 0x0

    .line 932
    :goto_0
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mPrename:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 933
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mPrename:Landroid/widget/EditText;

    sget v3, Lcom/yopeso/lieferando/R$string;->mandatory_field_error_message:I

    invoke-virtual {p0, v3}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 934
    const/4 v0, 0x0

    .line 950
    :goto_1
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mNickName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v6, :cond_a

    .line 951
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mNickName:Landroid/widget/EditText;

    sget v3, Lcom/yopeso/lieferando/R$string;->mandatory_field_limits_error_message:I

    invoke-virtual {p0, v3}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 961
    :goto_2
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mEmail:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 962
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mEmail:Landroid/widget/EditText;

    sget v3, Lcom/yopeso/lieferando/R$string;->mandatory_field_error_message:I

    invoke-virtual {p0, v3}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 963
    const/4 v0, 0x0

    .line 980
    :goto_3
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v2

    if-nez v2, :cond_14

    .line 982
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mPhone:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 983
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mPhone:Landroid/widget/EditText;

    sget v3, Lcom/yopeso/lieferando/R$string;->mandatory_field_error_message:I

    invoke-virtual {p0, v3}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 984
    const/4 v0, 0x0

    .line 1020
    :goto_4
    return v0

    .line 917
    :cond_0
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v7, :cond_1

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v6, :cond_2

    .line 918
    :cond_1
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mName:Landroid/widget/EditText;

    sget v3, Lcom/yopeso/lieferando/R$string;->mandatory_field_limits_error_message:I

    invoke-virtual {p0, v3}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 919
    const/4 v0, 0x0

    .line 920
    goto/16 :goto_0

    :cond_2
    const-string v2, "lastname"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v2, "lastname"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yopeso/lieferando/model/user/Regexp;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/Regexp;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 921
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mName:Landroid/widget/EditText;

    const-string v2, "lastname"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yopeso/lieferando/model/user/Regexp;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/Regexp;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 922
    const/4 v0, 0x0

    .line 923
    goto/16 :goto_0

    .line 924
    :cond_3
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "^[^{}]*$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 925
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mName:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/yopeso/lieferando/R$string;->enter_only_valid_chars:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 926
    const/4 v0, 0x0

    .line 927
    goto/16 :goto_0

    .line 929
    :cond_4
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mName:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 935
    :cond_5
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mPrename:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v7, :cond_6

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mPrename:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v6, :cond_7

    .line 936
    :cond_6
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mPrename:Landroid/widget/EditText;

    sget v3, Lcom/yopeso/lieferando/R$string;->mandatory_field_limits_error_message:I

    invoke-virtual {p0, v3}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 937
    const/4 v0, 0x0

    .line 938
    goto/16 :goto_1

    :cond_7
    const-string v2, "name"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mPrename:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v2, "name"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yopeso/lieferando/model/user/Regexp;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/Regexp;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 939
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mPrename:Landroid/widget/EditText;

    const-string v2, "name"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yopeso/lieferando/model/user/Regexp;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/Regexp;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 940
    const/4 v0, 0x0

    .line 941
    goto/16 :goto_1

    .line 942
    :cond_8
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mPrename:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "^[^{}]*$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 943
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mPrename:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/yopeso/lieferando/R$string;->enter_only_valid_chars:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 944
    const/4 v0, 0x0

    .line 945
    goto/16 :goto_1

    .line 947
    :cond_9
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mPrename:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 953
    :cond_a
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mNickName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "^[^{}]*$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 954
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mNickName:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/yopeso/lieferando/R$string;->enter_only_valid_chars:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 955
    const/4 v0, 0x0

    .line 956
    goto/16 :goto_2

    .line 958
    :cond_b
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mNickName:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 964
    :cond_c
    sget-object v2, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mEmail:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_d

    .line 965
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mEmail:Landroid/widget/EditText;

    sget v3, Lcom/yopeso/lieferando/R$string;->invalid_mail_format_error_message:I

    invoke-virtual {p0, v3}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 966
    const/4 v0, 0x0

    .line 967
    goto/16 :goto_3

    :cond_d
    const-string v2, "email"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mEmail:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v2, "email"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yopeso/lieferando/model/user/Regexp;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/Regexp;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 968
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mEmail:Landroid/widget/EditText;

    const-string v2, "email"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yopeso/lieferando/model/user/Regexp;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/Regexp;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 969
    const/4 v0, 0x0

    .line 970
    goto/16 :goto_3

    .line 971
    :cond_e
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mEmail:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "^[^{}]*$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 972
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mEmail:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/yopeso/lieferando/R$string;->enter_only_valid_chars:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 973
    const/4 v0, 0x0

    .line 974
    goto/16 :goto_3

    .line 976
    :cond_f
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mEmail:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 985
    :cond_10
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mPhone:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v8, :cond_11

    .line 986
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mPhone:Landroid/widget/EditText;

    sget v3, Lcom/yopeso/lieferando/R$string;->mandatory_field_error_message_incorect_phone:I

    invoke-virtual {p0, v3}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 987
    const/4 v0, 0x0

    .line 988
    goto/16 :goto_4

    :cond_11
    const-string v2, "phone"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mPhone:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v2, "phone"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yopeso/lieferando/model/user/Regexp;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/Regexp;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 989
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mPhone:Landroid/widget/EditText;

    const-string v2, "phone"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yopeso/lieferando/model/user/Regexp;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/Regexp;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 990
    const/4 v0, 0x0

    .line 991
    goto/16 :goto_4

    .line 992
    :cond_12
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mPhone:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "^[^{}]*$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 993
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mPhone:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/yopeso/lieferando/R$string;->enter_only_valid_chars:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 994
    const/4 v0, 0x0

    .line 995
    goto/16 :goto_4

    .line 997
    :cond_13
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mPhone:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 1001
    :cond_14
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mPhone:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1002
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mPhone:Landroid/widget/EditText;

    sget v3, Lcom/yopeso/lieferando/R$string;->mandatory_field_error_message:I

    invoke-virtual {p0, v3}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 1003
    const/4 v0, 0x0

    .line 1004
    goto/16 :goto_4

    :cond_15
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mPhone:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v8, :cond_16

    .line 1005
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mPhone:Landroid/widget/EditText;

    sget v3, Lcom/yopeso/lieferando/R$string;->mandatory_field_error_message_incorect_phone:I

    invoke-virtual {p0, v3}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 1006
    const/4 v0, 0x0

    .line 1007
    goto/16 :goto_4

    :cond_16
    const-string v2, "phone_pl"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mPhone:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v2, "phone_pl"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yopeso/lieferando/model/user/Regexp;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/Regexp;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 1008
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mPhone:Landroid/widget/EditText;

    const-string v2, "phone_pl"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yopeso/lieferando/model/user/Regexp;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/Regexp;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 1009
    const/4 v0, 0x0

    .line 1010
    goto/16 :goto_4

    .line 1011
    :cond_17
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mPhone:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "^[^{}]*$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 1012
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mPhone:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/yopeso/lieferando/R$string;->enter_only_valid_chars:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 1013
    const/4 v0, 0x0

    .line 1014
    goto/16 :goto_4

    .line 1016
    :cond_18
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->mPhone:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_4
.end method
