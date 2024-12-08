.class public Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;
.super Lcom/yopeso/lieferando/custom/LRFragment;
.source "RegistrationFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/yopeso/lieferando/callback/DatePickerCallBack;
.implements Lcom/yopeso/lieferando/callback/TakePictureCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$ImageListener;,
        Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$LoadImagesTask;,
        Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$RegisterListener;
    }
.end annotation


# static fields
.field public static final LIFERANDO_PROFILE_PHOTO:Ljava/lang/String; = "LiferandoProfilePhoto.jpg"

.field private static final PICK_PHOTO_REQUEST:I = 0xc

.field public static final TAG:Ljava/lang/String; = "register_fragment"

.field private static final TAKE_PHOTO_REQUEST:I = 0xb


# instance fields
.field private accountHeaderDetails:Landroid/widget/RelativeLayout;

.field private genderSpinner:Landroid/widget/Spinner;

.field private icon_mask:Landroid/widget/ImageView;

.field protected mAgbToggle:Landroid/widget/ToggleButton;

.field private mBirthDate:Landroid/widget/TextView;

.field protected mConfToggle:Landroid/widget/ToggleButton;

.field private mDay:I

.field private mDisplayDateFormat:Ljava/text/SimpleDateFormat;

.field private mEmail:Landroid/widget/EditText;

.field private mGender:Landroid/widget/ImageView;

.field private mGenderLayout:Landroid/widget/LinearLayout;

.field private mGenderString:Ljava/lang/String;

.field protected mHandler:Landroid/os/Handler;

.field private mMandatoryFieldWatcher:Landroid/text/TextWatcher;

.field private mMonth:I

.field private mName:Landroid/widget/EditText;

.field private mNickName:Landroid/widget/EditText;

.field private mPassword:Landroid/widget/EditText;

.field private mPasswordConfirmation:Landroid/widget/EditText;

.field private mPhone:Landroid/widget/EditText;

.field private mPhoto:Landroid/widget/ImageView;

.field private mPrename:Landroid/widget/EditText;

.field protected mUserData:Lcom/yopeso/lieferando/model/user/UserData;

.field private mYear:I

.field private pictureURI:Landroid/net/Uri;

.field private takePictureButton:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 181
    invoke-direct {p0}, Lcom/yopeso/lieferando/custom/LRFragment;-><init>()V

    .line 149
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd.MM.yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mDisplayDateFormat:Ljava/text/SimpleDateFormat;

    .line 154
    iput v2, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mYear:I

    .line 155
    iput v2, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mMonth:I

    .line 156
    iput v2, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mDay:I

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->pictureURI:Landroid/net/Uri;

    .line 174
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mHandler:Landroid/os/Handler;

    .line 179
    const-string v0, "m"

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mGenderString:Ljava/lang/String;

    .line 484
    new-instance v0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$1;

    invoke-direct {v0, p0}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$1;-><init>(Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;)V

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mMandatoryFieldWatcher:Landroid/text/TextWatcher;

    .line 182
    return-void
.end method

.method static synthetic access$0(Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;)V
    .locals 0

    .prologue
    .line 499
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->checkMandatoryFields()V

    return-void
.end method

.method static synthetic access$1(Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->pictureURI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$10(Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;)I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mMonth:I

    return v0
.end method

.method static synthetic access$11(Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;)I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mDay:I

    return v0
.end method

.method static synthetic access$12(Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mGenderString:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$13(Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 479
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->setGender(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;)V
    .locals 0

    .prologue
    .line 589
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->notifyRegisterSuccess()V

    return-void
.end method

.method static synthetic access$3(Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->dismissLoadingIndicator()V

    return-void
.end method

.method static synthetic access$4(Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;Lcom/android/volley/VolleyError;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->handleNetworkError(Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method static synthetic access$5(Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mPhoto:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->accountHeaderDetails:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$7(Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->icon_mask:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$8(Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;)V
    .locals 0

    .prologue
    .line 606
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->setDateFromBirthDay()V

    return-void
.end method

.method static synthetic access$9(Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;)I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mYear:I

    return v0
.end method

.method private checkMandatoryFields()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 500
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mPrename:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mPrename:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 504
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mName:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 506
    :cond_1
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mEmail:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 507
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mEmail:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 509
    :cond_2
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mPhone:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 510
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mPhone:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 512
    :cond_3
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 513
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 515
    :cond_4
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mPasswordConfirmation:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 516
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mPasswordConfirmation:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 518
    :cond_5
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mBirthDate:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 519
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mBirthDate:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 521
    :cond_6
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

    .line 765
    const/4 v2, 0x0

    .line 766
    .local v2, "in":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 767
    .local v4, "out":Ljava/io/FileOutputStream;
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 768
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const-string v6, "LiferandoProfilePhoto.jpg"

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/app/FragmentActivity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v4

    .line 769
    const/16 v5, 0x400

    new-array v0, v5, [B

    .line 770
    .local v0, "buffer":[B
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 771
    .local v3, "len":I
    :goto_0
    const/4 v5, -0x1

    if-ne v3, v5, :cond_2

    .line 775
    if-eqz v2, :cond_0

    .line 777
    :try_start_0
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 782
    :cond_0
    :goto_1
    if-eqz v4, :cond_1

    .line 784
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 789
    :cond_1
    :goto_2
    return-void

    .line 772
    :cond_2
    invoke-virtual {v4, v0, v7, v3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 773
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    goto :goto_0

    .line 778
    :catch_0
    move-exception v1

    .line 779
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 785
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 786
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method private getTempFile(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 668
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 669
    .local v0, "path":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 670
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 672
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, "LiferandoProfilePhoto.jpg"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private isAgbConfirmed()Z
    .locals 3

    .prologue
    .line 538
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mAgbToggle:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mConfToggle:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    .line 539
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 540
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    sget v1, Lcom/yopeso/lieferando/R$string;->agb_or_privacy_error_message:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 541
    sget v1, Lcom/yopeso/lieferando/R$string;->ok_button_text:I

    new-instance v2, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$7;

    invoke-direct {v2, p0}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$7;-><init>(Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 547
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 548
    const/4 v1, 0x0

    .line 550
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private notifyRegisterSuccess()V
    .locals 2

    .prologue
    .line 591
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->dismissLoadingIndicator()V

    .line 592
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 593
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 594
    return-void
.end method

.method private setDateFromBirthDay()V
    .locals 6

    .prologue
    .line 607
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "dd.MM.yyyy"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 608
    .local v3, "format":Ljava/text/SimpleDateFormat;
    const/4 v1, 0x0

    .line 610
    .local v1, "date":Ljava/util/Date;
    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mBirthDate:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 612
    :try_start_0
    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mBirthDate:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 613
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 614
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 615
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iput v4, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mYear:I

    .line 616
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iput v4, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mMonth:I

    .line 617
    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iput v4, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mDay:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 622
    .end local v0    # "cal":Ljava/util/Calendar;
    :cond_0
    :goto_0
    return-void

    .line 618
    :catch_0
    move-exception v2

    .line 619
    .local v2, "e":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private setGender(Ljava/lang/String;)V
    .locals 3
    .param p1, "gender"    # Ljava/lang/String;

    .prologue
    .line 480
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mGenderString:Ljava/lang/String;

    .line 481
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mGender:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mGenderString:Ljava/lang/String;

    const-string v2, "m"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/yopeso/lieferando/R$drawable;->icon_male:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 482
    return-void

    .line 481
    :cond_0
    sget v0, Lcom/yopeso/lieferando/R$drawable;->icon_woman:I

    goto :goto_0
.end method


# virtual methods
.method public choosePicture()V
    .locals 2

    .prologue
    .line 634
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 635
    .local v0, "pickPhoto":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 636
    const/16 v1, 0xc

    invoke-virtual {p0, v0, v1}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 638
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 217
    invoke-super {p0, p1}, Lcom/yopeso/lieferando/custom/LRFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 218
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$string;->app_name:I

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(I)V

    .line 219
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->CustomerName:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mName:Landroid/widget/EditText;

    .line 220
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mName:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mMandatoryFieldWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 221
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->CustomerPreName:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mPrename:Landroid/widget/EditText;

    .line 222
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mPrename:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mMandatoryFieldWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 223
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->CustomerNickName:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mNickName:Landroid/widget/EditText;

    .line 224
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->CustomerEmailAddress:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mEmail:Landroid/widget/EditText;

    .line 225
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mEmail:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mMandatoryFieldWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 226
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->CustomerPhoneNr:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mPhone:Landroid/widget/EditText;

    .line 227
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->CustomerNewPassword:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mPassword:Landroid/widget/EditText;

    .line 228
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mPassword:Landroid/widget/EditText;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 229
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mPassword:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mMandatoryFieldWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 230
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->CustomerNewPassConfirmation:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mPasswordConfirmation:Landroid/widget/EditText;

    .line 231
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mPasswordConfirmation:Landroid/widget/EditText;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 232
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mPasswordConfirmation:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mMandatoryFieldWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 233
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->CustomerBirthDate:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mBirthDate:Landroid/widget/TextView;

    .line 234
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mBirthDate:Landroid/widget/TextView;

    new-instance v1, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$2;

    invoke-direct {v1, p0}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$2;-><init>(Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mBirthDate:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mMandatoryFieldWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 244
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->CustomerImageGender:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mGender:Landroid/widget/ImageView;

    .line 245
    const-string v0, "m"

    invoke-direct {p0, v0}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->setGender(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->CustomerGender:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mGenderLayout:Landroid/widget/LinearLayout;

    .line 247
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mGenderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->RegisterButton:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v0

    if-nez v0, :cond_0

    .line 250
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->RegisterButton:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/SettingsContent;->getDynamicButtonFilter()Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 252
    :cond_0
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->AgbToggleButton:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mAgbToggle:Landroid/widget/ToggleButton;

    .line 253
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->ConfidentialityToggleButton:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mConfToggle:Landroid/widget/ToggleButton;

    .line 255
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->AGBTextId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->DatenschutzTextId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->FacebookLogin:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->AccountDetailsPhoto:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mPhoto:Landroid/widget/ImageView;

    .line 261
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->icon_mask:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->icon_mask:Landroid/widget/ImageView;

    .line 262
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->genderSpinner:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->genderSpinner:Landroid/widget/Spinner;

    .line 263
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->genderSpinner:Landroid/widget/Spinner;

    new-instance v1, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$3;

    invoke-direct {v1, p0}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$3;-><init>(Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 287
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->takePictureButton:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->takePictureButton:Landroid/widget/RelativeLayout;

    .line 288
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->AccountHeaderDetails:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->accountHeaderDetails:Landroid/widget/RelativeLayout;

    .line 290
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v0

    if-nez v0, :cond_1

    .line 291
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->takePictureButton:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/SettingsContent;->getDynamicButtonFilter()Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 294
    :cond_1
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->takePictureButton:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$4;

    invoke-direct {v1, p0}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$4;-><init>(Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 642
    invoke-super {p0, p1, p2, p3}, Lcom/yopeso/lieferando/custom/LRFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 643
    const-string v2, "register_fragment"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "onActivityResult "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    if-ne p2, v4, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    if-ne p2, v4, :cond_2

    .line 645
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_4

    .line 647
    :cond_0
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->getTempFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->pictureURI:Landroid/net/Uri;

    .line 651
    :goto_1
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->pictureURI:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 652
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "photo_uri"

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->pictureURI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 655
    :cond_1
    new-instance v0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$LoadImagesTask;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$LoadImagesTask;-><init>(Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$LoadImagesTask;)V

    new-array v1, v1, [Ljava/lang/Void;

    instance-of v2, v0, Landroid/os/AsyncTask;

    if-nez v2, :cond_5

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$LoadImagesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 657
    :cond_2
    :goto_2
    return-void

    :cond_3
    move v0, v1

    .line 643
    goto :goto_0

    .line 649
    :cond_4
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->pictureURI:Landroid/net/Uri;

    goto :goto_1

    .line 655
    :cond_5
    check-cast v0, Landroid/os/AsyncTask;

    invoke-static {v0, v1}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 309
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    .line 310
    .local v3, "id":I
    sget v7, Lcom/yopeso/lieferando/R$id;->RegisterButton:I

    if-ne v3, v7, :cond_1

    .line 311
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->registerButtonPressed()V

    .line 352
    :cond_0
    :goto_0
    return-void

    .line 312
    :cond_1
    sget v7, Lcom/yopeso/lieferando/R$id;->CustomerGender:I

    if-ne v3, v7, :cond_3

    .line 313
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 314
    .local v4, "inflater":Landroid/view/LayoutInflater;
    sget v8, Lcom/yopeso/lieferando/R$layout;->gender_dialog:I

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    sget v9, Lcom/yopeso/lieferando/R$id;->gender_layout:I

    invoke-virtual {v7, v9}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v4, v8, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 315
    .local v1, "dialog":Landroid/view/View;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 316
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 317
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 318
    .local v2, "genderDialog":Landroid/app/AlertDialog;
    sget v7, Lcom/yopeso/lieferando/R$id;->MaleButton:I

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 319
    .local v5, "maleImg":Landroid/widget/ImageView;
    sget v7, Lcom/yopeso/lieferando/R$id;->WomanButton:I

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 320
    .local v6, "womanImg":Landroid/widget/ImageView;
    iget-object v7, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mGenderString:Ljava/lang/String;

    const-string v8, "m"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 321
    sget v7, Lcom/yopeso/lieferando/R$drawable;->gender_male_act:I

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 322
    sget v7, Lcom/yopeso/lieferando/R$drawable;->gender_woman:I

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 327
    :goto_1
    new-instance v7, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$5;

    invoke-direct {v7, p0, v2}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$5;-><init>(Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;Landroid/app/AlertDialog;)V

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    new-instance v7, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$6;

    invoke-direct {v7, p0, v2}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$6;-><init>(Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;Landroid/app/AlertDialog;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 341
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 324
    :cond_2
    sget v7, Lcom/yopeso/lieferando/R$drawable;->gender_male:I

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 325
    sget v7, Lcom/yopeso/lieferando/R$drawable;->gender_woman_act:I

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 342
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "dialog":Landroid/view/View;
    .end local v2    # "genderDialog":Landroid/app/AlertDialog;
    .end local v4    # "inflater":Landroid/view/LayoutInflater;
    .end local v5    # "maleImg":Landroid/widget/ImageView;
    .end local v6    # "womanImg":Landroid/widget/ImageView;
    :cond_3
    sget v7, Lcom/yopeso/lieferando/R$id;->AGBTextId:I

    if-ne v3, v7, :cond_4

    .line 343
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    sget v9, Lcom/yopeso/lieferando/R$string;->agb_url:I

    invoke-virtual {p0, v9}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v7}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 344
    :cond_4
    sget v7, Lcom/yopeso/lieferando/R$id;->DatenschutzTextId:I

    if-ne v3, v7, :cond_5

    .line 345
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    sget v9, Lcom/yopeso/lieferando/R$string;->datenschutz_url:I

    invoke-virtual {p0, v9}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v7}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 346
    :cond_5
    sget v7, Lcom/yopeso/lieferando/R$id;->FacebookLogin:I

    if-ne v3, v7, :cond_0

    .line 347
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->isAgbConfirmed()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 348
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    check-cast v7, Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity;

    invoke-virtual {v7}, Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity;->requireFBLogin()V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x1

    .line 186
    invoke-super {p0, p1}, Lcom/yopeso/lieferando/custom/LRFragment;->onCreate(Landroid/os/Bundle;)V

    .line 187
    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->setHasOptionsMenu(Z)V

    .line 188
    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->setRetainInstance(Z)V

    .line 189
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;
    .param p2, "inflater"    # Lcom/actionbarsherlock/view/MenuInflater;

    .prologue
    .line 199
    invoke-super {p0, p1, p2}, Lcom/yopeso/lieferando/custom/LRFragment;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V

    .line 200
    sget v0, Lcom/yopeso/lieferando/R$menu;->menu_edit:I

    invoke-virtual {p2, v0, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 201
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 193
    sget v1, Lcom/yopeso/lieferando/R$layout;->registration_fragment:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 194
    .local v0, "view":Landroid/view/View;
    return-object v0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 205
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lcom/yopeso/lieferando/R$id;->menu_save:I

    if-ne v1, v2, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->registerButtonPressed()V

    .line 212
    :goto_0
    return v0

    .line 208
    :cond_0
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lcom/yopeso/lieferando/R$id;->menu_cancel:I

    if-ne v1, v2, :cond_1

    .line 209
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 212
    :cond_1
    invoke-super {p0, p1}, Lcom/yopeso/lieferando/custom/LRFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected registerButtonPressed()V
    .locals 5

    .prologue
    .line 524
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->validateTheForm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 525
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->isAgbConfirmed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 526
    sget v0, Lcom/yopeso/lieferando/R$string;->pleaseWait:I

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->showLoadingIndicator(I)V

    .line 527
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/net/requests/RegisterRequest;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->saveDatesOnUserData()Lorg/json/JSONObject;

    move-result-object v2

    new-instance v3, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$RegisterListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$RegisterListener;-><init>(Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$RegisterListener;)V

    invoke-direct {v1, v2, v3}, Lcom/yopeso/lieferando/net/requests/RegisterRequest;-><init>(Lorg/json/JSONObject;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v1}, Lcom/yopeso/lieferando/net/requests/RegisterRequest;->withAuth()Lcom/yopeso/lieferando/net/requests/base/JsonRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 530
    :cond_0
    return-void
.end method

.method protected saveDatesOnUserData()Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 558
    new-instance v2, Lcom/yopeso/lieferando/model/user/UserData;

    invoke-direct {v2}, Lcom/yopeso/lieferando/model/user/UserData;-><init>()V

    iput-object v2, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    .line 559
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yopeso/lieferando/model/user/UserData;->setName(Ljava/lang/String;)V

    .line 560
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mPrename:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yopeso/lieferando/model/user/UserData;->setPreName(Ljava/lang/String;)V

    .line 561
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mNickName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yopeso/lieferando/model/user/UserData;->setNickName(Ljava/lang/String;)V

    .line 562
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mEmail:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yopeso/lieferando/model/user/UserData;->setEmail(Ljava/lang/String;)V

    .line 563
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mPhone:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yopeso/lieferando/model/user/UserData;->setTelephone(Ljava/lang/String;)V

    .line 564
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mBirthDate:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 565
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mBirthDate:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yopeso/lieferando/model/user/UserData;->setBirthDay(Ljava/lang/String;)V

    .line 569
    :goto_0
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mGenderString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/yopeso/lieferando/model/user/UserData;->setGender(Ljava/lang/String;)V

    .line 570
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 572
    .local v1, "params":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "prename"

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/user/UserData;->getPreName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 573
    const-string v2, "name"

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/user/UserData;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 574
    const-string v2, "email"

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/user/UserData;->getEmail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 575
    const-string v2, "password"

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 576
    const-string v2, "password_repeat"

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mPasswordConfirmation:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 577
    const-string v2, "tel"

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/user/UserData;->getTelephone()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 578
    const-string v2, "agb"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 579
    const-string v2, "nickname"

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/user/UserData;->getNickName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 580
    const-string v2, "birthday"

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/user/UserData;->getBirthDay()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 581
    const-string v2, "sex"

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/user/UserData;->getGender()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 585
    :goto_1
    const-class v2, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "JSONObject:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    return-object v1

    .line 567
    .end local v1    # "params":Lorg/json/JSONObject;
    :cond_0
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/yopeso/lieferando/model/user/UserData;->setBirthDay(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 582
    .restart local v1    # "params":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 583
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public setDate(III)V
    .locals 4
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .prologue
    .line 598
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 599
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 600
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 601
    const/4 v1, 0x5

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 603
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mBirthDate:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mDisplayDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 604
    return-void
.end method

.method public takePicture()V
    .locals 3

    .prologue
    .line 626
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 627
    .local v0, "takePhoto":Landroid/content/Intent;
    const-string v1, "output"

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->getTempFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 628
    const/16 v1, 0xb

    invoke-virtual {p0, v0, v1}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 630
    return-void
.end method

.method public updateProfilePhoto(Landroid/net/Uri;)V
    .locals 10
    .param p1, "imageUri"    # Landroid/net/Uri;

    .prologue
    .line 676
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 679
    .local v5, "params":Lorg/json/JSONObject;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->copyUriToFileForUpload(Landroid/net/Uri;)V

    .line 680
    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-static {p1, v6, v7}, Lcom/yopeso/lieferando/util/ImageUtils;->getThumbnail(Landroid/net/Uri;ZLandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 682
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 683
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x32

    invoke-virtual {v2, v6, v7, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 685
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 686
    .local v0, "b":[B
    const/4 v6, 0x0

    invoke-static {v0, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    .line 688
    .local v4, "encodedImage":Ljava/lang/String;
    const-string v6, "picture"

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 696
    .end local v0    # "b":[B
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "encodedImage":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v6

    new-instance v7, Lcom/yopeso/lieferando/net/requests/ImageRequest;

    new-instance v8, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$ImageListener;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$ImageListener;-><init>(Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$ImageListener;)V

    invoke-direct {v7, v5, v8}, Lcom/yopeso/lieferando/net/requests/ImageRequest;-><init>(Lorg/json/JSONObject;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v7}, Lcom/yopeso/lieferando/net/requests/ImageRequest;->withAuth()Lcom/yopeso/lieferando/net/requests/base/JsonRequest;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 697
    return-void

    .line 689
    :catch_0
    move-exception v3

    .line 690
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 691
    .end local v3    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v3

    .line 692
    .local v3, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 693
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v3

    .line 694
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method protected validateTheForm()Z
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/16 v6, 0x19

    const/4 v5, 0x6

    const/4 v4, 0x0

    .line 360
    const/4 v0, 0x1

    .line 361
    .local v0, "done":Z
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/SettingsContent;->getRegexp()Ljava/util/Map;

    move-result-object v1

    .line 363
    .local v1, "regexp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/yopeso/lieferando/model/user/Regexp;>;"
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mName:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 364
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mPrename:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mPrename:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 365
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mEmail:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mEmail:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 366
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 367
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mName:Landroid/widget/EditText;

    sget v3, Lcom/yopeso/lieferando/R$string;->mandatory_field_error_message:I

    invoke-virtual {p0, v3}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 368
    const/4 v0, 0x0

    .line 378
    :goto_0
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mPrename:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 379
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mPrename:Landroid/widget/EditText;

    sget v3, Lcom/yopeso/lieferando/R$string;->mandatory_field_error_message:I

    invoke-virtual {p0, v3}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 380
    const/4 v0, 0x0

    .line 391
    :goto_1
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mNickName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v6, :cond_9

    .line 392
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mNickName:Landroid/widget/EditText;

    sget v3, Lcom/yopeso/lieferando/R$string;->mandatory_field_limits_error_message:I

    invoke-virtual {p0, v3}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 397
    :goto_2
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mEmail:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 398
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mEmail:Landroid/widget/EditText;

    sget v3, Lcom/yopeso/lieferando/R$string;->mandatory_field_error_message:I

    invoke-virtual {p0, v3}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 399
    const/4 v0, 0x0

    .line 410
    :goto_3
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 411
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mPassword:Landroid/widget/EditText;

    sget v3, Lcom/yopeso/lieferando/R$string;->mandatory_field_error_message:I

    invoke-virtual {p0, v3}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 412
    const/4 v0, 0x0

    .line 422
    :goto_4
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mPasswordConfirmation:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 423
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mPasswordConfirmation:Landroid/widget/EditText;

    sget v3, Lcom/yopeso/lieferando/R$string;->mandatory_field_error_message:I

    invoke-virtual {p0, v3}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 424
    const/4 v0, 0x0

    .line 435
    :goto_5
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v2

    if-nez v2, :cond_16

    .line 437
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mPhone:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 438
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mPhone:Landroid/widget/EditText;

    sget v3, Lcom/yopeso/lieferando/R$string;->mandatory_field_error_message:I

    invoke-virtual {p0, v3}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 439
    const/4 v0, 0x0

    .line 463
    :goto_6
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mPasswordConfirmation:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 464
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mPasswordConfirmation:Landroid/widget/EditText;

    sget v3, Lcom/yopeso/lieferando/R$string;->confirmation_pass_error_message:I

    invoke-virtual {p0, v3}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 465
    const/4 v0, 0x0

    .line 470
    :cond_0
    :goto_7
    return v0

    .line 369
    :cond_1
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v7, :cond_2

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v6, :cond_3

    .line 370
    :cond_2
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mName:Landroid/widget/EditText;

    sget v3, Lcom/yopeso/lieferando/R$string;->mandatory_field_limits_error_message:I

    invoke-virtual {p0, v3}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 371
    const/4 v0, 0x0

    .line 372
    goto/16 :goto_0

    :cond_3
    const-string v2, "lastname"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mName:Landroid/widget/EditText;

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

    if-nez v2, :cond_4

    .line 373
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mName:Landroid/widget/EditText;

    const-string v2, "lastname"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yopeso/lieferando/model/user/Regexp;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/Regexp;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 374
    const/4 v0, 0x0

    .line 375
    goto/16 :goto_0

    .line 376
    :cond_4
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mName:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 381
    :cond_5
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mPrename:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v7, :cond_6

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mPrename:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v6, :cond_7

    .line 382
    :cond_6
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mPrename:Landroid/widget/EditText;

    sget v3, Lcom/yopeso/lieferando/R$string;->mandatory_field_limits_error_message:I

    invoke-virtual {p0, v3}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 383
    const/4 v0, 0x0

    .line 384
    goto/16 :goto_1

    :cond_7
    const-string v2, "name"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mPrename:Landroid/widget/EditText;

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

    .line 385
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mPrename:Landroid/widget/EditText;

    const-string v2, "name"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yopeso/lieferando/model/user/Regexp;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/Regexp;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 386
    const/4 v0, 0x0

    .line 387
    goto/16 :goto_1

    .line 388
    :cond_8
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mPrename:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 394
    :cond_9
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mNickName:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 400
    :cond_a
    sget-object v2, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mEmail:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_b

    .line 401
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mEmail:Landroid/widget/EditText;

    sget v3, Lcom/yopeso/lieferando/R$string;->invalid_mail_format_error_message:I

    invoke-virtual {p0, v3}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 402
    const/4 v0, 0x0

    .line 403
    goto/16 :goto_3

    :cond_b
    const-string v2, "email"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mEmail:Landroid/widget/EditText;

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

    if-nez v2, :cond_c

    .line 404
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mEmail:Landroid/widget/EditText;

    const-string v2, "email"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yopeso/lieferando/model/user/Regexp;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/Regexp;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 405
    const/4 v0, 0x0

    .line 406
    goto/16 :goto_3

    .line 407
    :cond_c
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mEmail:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 413
    :cond_d
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v5, :cond_e

    .line 414
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mPassword:Landroid/widget/EditText;

    sget v3, Lcom/yopeso/lieferando/R$string;->pass_too_short:I

    invoke-virtual {p0, v3}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 415
    const/4 v0, 0x0

    .line 416
    goto/16 :goto_4

    :cond_e
    const-string v2, "password"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v2, "password"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yopeso/lieferando/model/user/Regexp;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/Regexp;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 417
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mPassword:Landroid/widget/EditText;

    const-string v2, "password"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yopeso/lieferando/model/user/Regexp;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/Regexp;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 418
    const/4 v0, 0x0

    .line 419
    goto/16 :goto_4

    .line 420
    :cond_f
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 425
    :cond_10
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mPasswordConfirmation:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v5, :cond_11

    .line 426
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mPasswordConfirmation:Landroid/widget/EditText;

    sget v3, Lcom/yopeso/lieferando/R$string;->pass_too_short:I

    invoke-virtual {p0, v3}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 427
    const/4 v0, 0x0

    .line 428
    goto/16 :goto_5

    :cond_11
    const-string v2, "password"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mPasswordConfirmation:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v2, "password"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yopeso/lieferando/model/user/Regexp;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/Regexp;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 429
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mPasswordConfirmation:Landroid/widget/EditText;

    const-string v2, "password"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yopeso/lieferando/model/user/Regexp;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/Regexp;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 430
    const/4 v0, 0x0

    .line 431
    goto/16 :goto_5

    .line 432
    :cond_12
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mPasswordConfirmation:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 440
    :cond_13
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mPhone:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v5, :cond_14

    .line 441
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mPhone:Landroid/widget/EditText;

    sget v3, Lcom/yopeso/lieferando/R$string;->mandatory_field_error_message_incorect_phone:I

    invoke-virtual {p0, v3}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 442
    const/4 v0, 0x0

    .line 443
    goto/16 :goto_6

    :cond_14
    const-string v2, "phone"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mPhone:Landroid/widget/EditText;

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

    if-nez v2, :cond_15

    .line 444
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mPhone:Landroid/widget/EditText;

    const-string v2, "phone"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yopeso/lieferando/model/user/Regexp;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/Regexp;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 445
    const/4 v0, 0x0

    .line 446
    goto/16 :goto_6

    .line 447
    :cond_15
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mPhone:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 450
    :cond_16
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mPhone:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 451
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mPhone:Landroid/widget/EditText;

    sget v3, Lcom/yopeso/lieferando/R$string;->mandatory_field_error_message:I

    invoke-virtual {p0, v3}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 452
    const/4 v0, 0x0

    .line 453
    goto/16 :goto_6

    :cond_17
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mPhone:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v5, :cond_18

    .line 454
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mPhone:Landroid/widget/EditText;

    sget v3, Lcom/yopeso/lieferando/R$string;->mandatory_field_error_message_incorect_phone:I

    invoke-virtual {p0, v3}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 455
    const/4 v0, 0x0

    .line 456
    goto/16 :goto_6

    :cond_18
    const-string v2, "phone_pl"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mPhone:Landroid/widget/EditText;

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

    if-nez v2, :cond_19

    .line 457
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mPhone:Landroid/widget/EditText;

    const-string v2, "phone_pl"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yopeso/lieferando/model/user/Regexp;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/Regexp;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 458
    const/4 v0, 0x0

    .line 459
    goto/16 :goto_6

    .line 460
    :cond_19
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mPhone:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 466
    :cond_1a
    if-eqz v0, :cond_0

    .line 467
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->mPasswordConfirmation:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_7
.end method
