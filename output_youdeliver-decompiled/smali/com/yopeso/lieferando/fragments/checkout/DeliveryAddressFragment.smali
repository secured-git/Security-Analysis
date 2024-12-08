.class public Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;
.super Lcom/yopeso/lieferando/custom/LRFragment;
.source "DeliveryAddressFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment$DecodeLocationTask;
    }
.end annotation


# static fields
.field protected static final KEY_GPS:Ljava/lang/String; = "key_gps"


# instance fields
.field private mAGB_RL:Landroid/widget/RelativeLayout;

.field private mAgb:Landroid/widget/ToggleButton;

.field private mCity:Landroid/widget/EditText;

.field private mCompany:Landroid/widget/EditText;

.field private mDecodeTask:Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment$DecodeLocationTask;

.field private mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

.field private mEmail:Landroid/widget/EditText;

.field private mFirstName:Landroid/widget/EditText;

.field private mFloor:Landroid/widget/EditText;

.field private mLastName:Landroid/widget/EditText;

.field private mLocationListener:Landroid/location/LocationListener;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mNumber:Landroid/widget/EditText;

.field private mPhone:Landroid/widget/EditText;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mRestDeliveryAreas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;",
            ">;"
        }
    .end annotation
.end field

.field private mSaveAddress:Landroid/widget/Button;

.field private mSaveAddressRL:Landroid/widget/RelativeLayout;

.field private mSaveAddressToggleButton:Landroid/widget/ToggleButton;

.field private mSpecialNotes:Landroid/widget/EditText;

.field private mStreet:Landroid/widget/EditText;

.field private mZipAdapter:Lcom/yopeso/lieferando/adapters/PlzSpinnerAdapter;

.field private mZipCode:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/yopeso/lieferando/custom/LRFragment;-><init>()V

    .line 112
    return-void
.end method

.method static synthetic access$0(Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1(Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;)Lcom/yopeso/lieferando/model/user/Location;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    return-object v0
.end method

.method static synthetic access$2(Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;)Landroid/location/LocationManager;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mLocationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$3(Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;)Landroid/location/LocationListener;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mLocationListener:Landroid/location/LocationListener;

    return-object v0
.end method

.method static synthetic access$4(Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment$DecodeLocationTask;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mDecodeTask:Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment$DecodeLocationTask;

    return-void
.end method

.method static synthetic access$5(Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;)Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment$DecodeLocationTask;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mDecodeTask:Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment$DecodeLocationTask;

    return-object v0
.end method

.method static synthetic access$6(Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mAGB_RL:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private getEmailAddress(Lcom/yopeso/lieferando/model/user/Location;)Ljava/lang/String;
    .locals 1
    .param p1, "deliveryAddr"    # Lcom/yopeso/lieferando/model/user/Location;

    .prologue
    .line 461
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/user/Location;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 462
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/UserData;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 463
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/UserData;->getEmail()Ljava/lang/String;

    move-result-object v0

    .line 471
    :goto_0
    return-object v0

    .line 466
    :cond_0
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 467
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getEmail()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 471
    :cond_1
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/user/Location;->getEmail()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static newInstance(Z)Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;
    .locals 3
    .param p0, "getGPSAddress"    # Z

    .prologue
    .line 115
    new-instance v1, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;

    invoke-direct {v1}, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;-><init>()V

    .line 116
    .local v1, "daf":Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 117
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "key_gps"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 118
    invoke-virtual {v1, v0}, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->setArguments(Landroid/os/Bundle;)V

    .line 119
    return-object v1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "arg0"    # Landroid/text/Editable;

    .prologue
    .line 724
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->validate()Z

    .line 725
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 730
    return-void
.end method

.method public displayAddrresInView(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 383
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mZipCode:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/Location;->getPlz()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 384
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mCity:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/Location;->getCityName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 385
    const-class v1, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "displayAddrresInView: prename"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/user/Location;->getPreName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Empty:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mFirstName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    const-class v1, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "displayAddrresInView: getName"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/user/Location;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Empty:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mLastName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mFirstName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 388
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mFirstName:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/Location;->getPreName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 390
    :cond_0
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mLastName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 391
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mLastName:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/Location;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 393
    :cond_1
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->isLoggedIn()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getEmail()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 394
    const-class v1, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setEmail: UserStore.getEmail():"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getEmail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/user/Location;->setEmail(Ljava/lang/String;)V

    .line 397
    :cond_2
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mEmail:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 398
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    invoke-direct {p0, v1}, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->getEmailAddress(Lcom/yopeso/lieferando/model/user/Location;)Ljava/lang/String;

    move-result-object v0

    .line 399
    .local v0, "email":Ljava/lang/String;
    const-class v1, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getEmailAddress:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {v1, v0}, Lcom/yopeso/lieferando/model/user/Location;->setEmail(Ljava/lang/String;)V

    .line 401
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mEmail:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 403
    .end local v0    # "email":Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mPhone:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 404
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mPhone:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/Location;->getPhone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 406
    :cond_4
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mStreet:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 407
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mStreet:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/Location;->getStreet()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 409
    :cond_5
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mNumber:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 410
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mNumber:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/Location;->getHnr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 411
    if-eqz p1, :cond_6

    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 413
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mNumber:Landroid/widget/EditText;

    const-string v2, "phone"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 418
    :cond_6
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mCompany:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 419
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mCompany:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/Location;->getCompany()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 421
    :cond_7
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mFloor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 422
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mFloor:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/Location;->getEtage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 424
    :cond_8
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mSpecialNotes:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 425
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mSpecialNotes:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/Location;->getComment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 427
    :cond_9
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mAgb:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    if-nez v1, :cond_a

    .line 428
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mAgb:Landroid/widget/ToggleButton;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/Location;->getAgb()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 432
    :cond_a
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->isLoggedIn()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 433
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mSaveAddressRL:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 434
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mAgb:Landroid/widget/ToggleButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 438
    :goto_0
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->validate()Z

    .line 443
    return-void

    .line 436
    :cond_b
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mSaveAddressRL:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method protected getTitle()I
    .locals 1

    .prologue
    .line 150
    sget v0, Lcom/yopeso/lieferando/R$string;->address_title:I

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 453
    invoke-super {p0, p1}, Lcom/yopeso/lieferando/custom/LRFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 454
    if-eqz p1, :cond_0

    .line 455
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mNumber:Landroid/widget/EditText;

    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 457
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 545
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 546
    .local v0, "id":I
    sget v1, Lcom/yopeso/lieferando/R$id;->AGBTextId:I

    if-eq v0, v1, :cond_0

    sget v1, Lcom/yopeso/lieferando/R$id;->AGBLinkID:I

    if-ne v0, v1, :cond_2

    .line 547
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    sget v3, Lcom/yopeso/lieferando/R$string;->agb_url:I

    invoke-virtual {p0, v3}, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->startActivity(Landroid/content/Intent;)V

    .line 562
    :cond_1
    :goto_0
    return-void

    .line 548
    :cond_2
    sget v1, Lcom/yopeso/lieferando/R$id;->saveAddressButton:I

    if-ne v0, v1, :cond_1

    .line 549
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->validate()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 550
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->updateAddressFromView()V

    .line 551
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->dismissLoadingIndicator()V

    .line 552
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mSaveAddressToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    if-nez v1, :cond_3

    .line 553
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$string;->changes_commited:I

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 555
    :cond_3
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 557
    :cond_4
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mAgb:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    .line 558
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$string;->agb_not_set:I

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 124
    invoke-super {p0, p1}, Lcom/yopeso/lieferando/custom/LRFragment;->onCreate(Landroid/os/Bundle;)V

    .line 125
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mLocationManager:Landroid/location/LocationManager;

    .line 126
    new-instance v0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment$1;

    invoke-direct {v0, p0}, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment$1;-><init>(Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;)V

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mLocationListener:Landroid/location/LocationListener;

    .line 146
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 155
    sget v3, Lcom/yopeso/lieferando/R$layout;->deliver_address:I

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 157
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getDeliveryAddress()Lcom/yopeso/lieferando/model/user/Location;

    move-result-object v3

    iput-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    .line 158
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getDeliverAreas()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mRestDeliveryAreas:Ljava/util/ArrayList;

    .line 161
    sget v3, Lcom/yopeso/lieferando/R$id;->saveAddressButton:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mSaveAddress:Landroid/widget/Button;

    .line 162
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v3

    invoke-interface {v3}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v3

    if-nez v3, :cond_0

    .line 163
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mSaveAddress:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/SettingsContent;->getDynamicButtonFilter()Landroid/graphics/PorterDuffColorFilter;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 165
    :cond_0
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mSaveAddress:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    sget v3, Lcom/yopeso/lieferando/R$id;->DeliverFirstName:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mFirstName:Landroid/widget/EditText;

    .line 168
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mFirstName:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 169
    sget v3, Lcom/yopeso/lieferando/R$id;->DeliverLastName:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mLastName:Landroid/widget/EditText;

    .line 170
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mLastName:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 171
    sget v3, Lcom/yopeso/lieferando/R$id;->DeliverEmail:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mEmail:Landroid/widget/EditText;

    .line 172
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mEmail:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 173
    sget v3, Lcom/yopeso/lieferando/R$id;->DeliverPhone:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mPhone:Landroid/widget/EditText;

    .line 174
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mPhone:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 175
    sget v3, Lcom/yopeso/lieferando/R$id;->DeliverStreet:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mStreet:Landroid/widget/EditText;

    .line 176
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mStreet:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 177
    sget v3, Lcom/yopeso/lieferando/R$id;->DeliverNumber:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mNumber:Landroid/widget/EditText;

    .line 178
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mNumber:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 179
    sget v3, Lcom/yopeso/lieferando/R$id;->DeliverZipCode:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mZipCode:Landroid/widget/EditText;

    .line 180
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mZipCode:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 182
    new-instance v3, Lcom/yopeso/lieferando/adapters/PlzSpinnerAdapter;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    sget v5, Lcom/yopeso/lieferando/R$layout;->zip_spinner_item:I

    iget-object v6, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mRestDeliveryAreas:Ljava/util/ArrayList;

    invoke-direct {v3, v4, v5, v6}, Lcom/yopeso/lieferando/adapters/PlzSpinnerAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mZipAdapter:Lcom/yopeso/lieferando/adapters/PlzSpinnerAdapter;

    .line 183
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mZipAdapter:Lcom/yopeso/lieferando/adapters/PlzSpinnerAdapter;

    sget v4, Lcom/yopeso/lieferando/R$layout;->zip_spinner_item:I

    invoke-virtual {v3, v4}, Lcom/yopeso/lieferando/adapters/PlzSpinnerAdapter;->setDropDownViewResource(I)V

    .line 243
    sget v3, Lcom/yopeso/lieferando/R$id;->DeliverCity:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mCity:Landroid/widget/EditText;

    .line 244
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mCity:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 246
    sget v3, Lcom/yopeso/lieferando/R$id;->DeliverCompany:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mCompany:Landroid/widget/EditText;

    .line 247
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mCompany:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 248
    sget v3, Lcom/yopeso/lieferando/R$id;->DeliverFloor:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mFloor:Landroid/widget/EditText;

    .line 249
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mFloor:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 250
    sget v3, Lcom/yopeso/lieferando/R$id;->DeliverSpecialNotes:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mSpecialNotes:Landroid/widget/EditText;

    .line 251
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mSpecialNotes:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 252
    sget v3, Lcom/yopeso/lieferando/R$id;->AgbToggleButton:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ToggleButton;

    iput-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mAgb:Landroid/widget/ToggleButton;

    .line 253
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mAgb:Landroid/widget/ToggleButton;

    new-instance v4, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment$2;

    invoke-direct {v4, p0}, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment$2;-><init>(Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 270
    sget v3, Lcom/yopeso/lieferando/R$id;->SaveAddressToggleButton:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ToggleButton;

    iput-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mSaveAddressToggleButton:Landroid/widget/ToggleButton;

    .line 271
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mSaveAddressToggleButton:Landroid/widget/ToggleButton;

    new-instance v4, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment$3;

    invoke-direct {v4, p0}, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment$3;-><init>(Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 280
    sget v3, Lcom/yopeso/lieferando/R$id;->SaveAddressRL:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mSaveAddressRL:Landroid/widget/RelativeLayout;

    .line 281
    sget v3, Lcom/yopeso/lieferando/R$id;->AGB_RL:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mAGB_RL:Landroid/widget/RelativeLayout;

    .line 283
    sget v3, Lcom/yopeso/lieferando/R$id;->AGBTextId:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    sget v3, Lcom/yopeso/lieferando/R$id;->AGBLinkID:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 286
    .local v0, "AGBLinkTV":Landroid/widget/TextView;
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 287
    .local v1, "ssb":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 288
    new-instance v3, Landroid/text/style/URLSpan;

    const-string v4, "#"

    invoke-direct {v3, v4}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    const/16 v5, 0x21

    invoke-virtual {v1, v3, v7, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 289
    sget-object v3, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 290
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v3

    invoke-interface {v3}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 293
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/user/Location;->getCityName()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    if-eq v3, v4, :cond_1

    .line 294
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mCity:Landroid/widget/EditText;

    invoke-virtual {v3, v7}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 295
    :cond_1
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/user/Location;->getStreet()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/user/Location;->wasStreetEdited()Z

    move-result v3

    if-nez v3, :cond_3

    .line 296
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mStreet:Landroid/widget/EditText;

    invoke-virtual {v3, v7}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 302
    :goto_0
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/user/Location;->getHnr()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/user/Location;->wasHouseNumberEdited()Z

    move-result v3

    if-nez v3, :cond_4

    .line 303
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mNumber:Landroid/widget/EditText;

    invoke-virtual {v3, v7}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 310
    :cond_2
    :goto_1
    invoke-virtual {p0, p3}, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->displayAddrresInView(Landroid/os/Bundle;)V

    .line 312
    return-object v2

    .line 298
    :cond_3
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {v3, v8}, Lcom/yopeso/lieferando/model/user/Location;->setStreetEdited(Z)V

    .line 299
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mStreet:Landroid/widget/EditText;

    invoke-virtual {v3, v8}, Landroid/widget/EditText;->setEnabled(Z)V

    goto :goto_0

    .line 305
    :cond_4
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {v3, v8}, Lcom/yopeso/lieferando/model/user/Location;->setHouseNumberEdited(Z)V

    .line 306
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mNumber:Landroid/widget/EditText;

    invoke-virtual {v3, v8}, Landroid/widget/EditText;->setEnabled(Z)V

    goto :goto_1
.end method

.method public onEvent(Lcom/yopeso/lieferando/events/AuthenticationEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/yopeso/lieferando/events/AuthenticationEvent;

    .prologue
    .line 376
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->displayAddrresInView(Landroid/os/Bundle;)V

    .line 377
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 355
    invoke-super {p0}, Lcom/yopeso/lieferando/custom/LRFragment;->onPause()V

    .line 358
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 349
    invoke-super {p0}, Lcom/yopeso/lieferando/custom/LRFragment;->onResume()V

    .line 350
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 351
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 447
    invoke-super {p0, p1}, Lcom/yopeso/lieferando/custom/LRFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 448
    const-string v0, "phone"

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mNumber:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    return-void
.end method

.method public onStart()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 317
    invoke-super {p0}, Lcom/yopeso/lieferando/custom/LRFragment;->onStart()V

    .line 318
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 319
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 321
    :cond_0
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key_gps"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 323
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 324
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->buildAlertMessageNoGps()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 344
    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->displayAddrresInView(Landroid/os/Bundle;)V

    .line 345
    return-void

    .line 326
    :cond_2
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 327
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    sget v1, Lcom/yopeso/lieferando/R$string;->checking_location:I

    invoke-virtual {p0, v1}, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 328
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment$4;

    invoke-direct {v1, p0}, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment$4;-><init>(Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 335
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 337
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    const-string v1, "gps"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 338
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 340
    :cond_3
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 362
    invoke-super {p0}, Lcom/yopeso/lieferando/custom/LRFragment;->onStop()V

    .line 363
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mDecodeTask:Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment$DecodeLocationTask;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mDecodeTask:Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment$DecodeLocationTask;

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment$DecodeLocationTask;->cancel(Z)Z

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mSaveAddressToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->validate()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 368
    sput-boolean v1, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->saveNewAddress:Z

    .line 370
    :cond_1
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 371
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 373
    :cond_2
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 735
    return-void
.end method

.method public updateAddressFromView()V
    .locals 7

    .prologue
    .line 478
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mFirstName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/user/Location;->setPreName(Ljava/lang/String;)V

    .line 479
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mLastName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/user/Location;->setName(Ljava/lang/String;)V

    .line 480
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mEmail:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/user/Location;->setEmail(Ljava/lang/String;)V

    .line 481
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mPhone:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/user/Location;->setPhone(Ljava/lang/String;)V

    .line 482
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mStreet:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/user/Location;->setStreet(Ljava/lang/String;)V

    .line 483
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mNumber:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/user/Location;->setHnr(Ljava/lang/String;)V

    .line 485
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mCity:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/user/Location;->setCityName(Ljava/lang/String;)V

    .line 486
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mCompany:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/user/Location;->setCompany(Ljava/lang/String;)V

    .line 487
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mFloor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/user/Location;->setEtage(Ljava/lang/String;)V

    .line 488
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mSpecialNotes:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/user/Location;->setComment(Ljava/lang/String;)V

    .line 489
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mDeliveryAddress:Lcom/yopeso/lieferando/model/user/Location;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mAgb:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/user/Location;->setAgb(Z)V

    .line 492
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->isLoggedIn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mFirstName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mLastName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mEmail:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mPhone:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 494
    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mZipCode:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mStreet:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mNumber:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    .line 493
    invoke-static/range {v0 .. v6}, Lcom/yopeso/lieferando/util/UserStore;->saveUserData_NO_LOGIN(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    :goto_0
    return-void

    .line 498
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mZipCode:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mStreet:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mNumber:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yopeso/lieferando/util/UserStore;->addAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public validate()Z
    .locals 11

    .prologue
    const/16 v10, 0x19

    const/4 v9, 0x6

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 565
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/SettingsContent;->getRegexp()Ljava/util/Map;

    move-result-object v1

    .line 566
    .local v1, "regexp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/yopeso/lieferando/model/user/Regexp;>;"
    const/4 v2, 0x1

    .line 568
    .local v2, "returnObject":Z
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mFirstName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 569
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mFirstName:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    sget v5, Lcom/yopeso/lieferando/R$string;->add_address_mandatory_field_text:I

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 570
    const/4 v2, 0x0

    .line 584
    :goto_0
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mLastName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 585
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mLastName:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    sget v5, Lcom/yopeso/lieferando/R$string;->add_address_mandatory_field_text:I

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 586
    const/4 v2, 0x0

    .line 600
    :goto_1
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mEmail:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 601
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mEmail:Landroid/widget/EditText;

    sget v4, Lcom/yopeso/lieferando/R$string;->mandatory_field_error_message:I

    invoke-virtual {p0, v4}, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 602
    const/4 v2, 0x0

    .line 616
    :goto_2
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v3

    invoke-interface {v3}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v3

    if-nez v3, :cond_12

    .line 618
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mPhone:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 619
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mPhone:Landroid/widget/EditText;

    sget v4, Lcom/yopeso/lieferando/R$string;->mandatory_field_error_message:I

    invoke-virtual {p0, v4}, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 620
    const/4 v2, 0x0

    .line 646
    :goto_3
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mStreet:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 647
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mStreet:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    sget v5, Lcom/yopeso/lieferando/R$string;->add_address_mandatory_field_text:I

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 648
    const/4 v2, 0x0

    .line 662
    :goto_4
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mNumber:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 663
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mNumber:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    sget v5, Lcom/yopeso/lieferando/R$string;->add_address_mandatory_field_text:I

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 664
    const/4 v2, 0x0

    .line 675
    :goto_5
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mCity:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 676
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mCity:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    sget v5, Lcom/yopeso/lieferando/R$string;->add_address_mandatory_field_text:I

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 677
    const/4 v2, 0x0

    .line 686
    :goto_6
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mAgb:Landroid/widget/ToggleButton;

    invoke-virtual {v3}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v3

    if-nez v3, :cond_0

    .line 688
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v8, v3}, Lcom/yopeso/lieferando/util/DensityUtils;->convertDpToPixel(ILandroid/content/Context;)I

    move-result v0

    .line 689
    .local v0, "padding":I
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mAGB_RL:Landroid/widget/RelativeLayout;

    sget v4, Lcom/yopeso/lieferando/R$drawable;->background_red_rounded:I

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 690
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mAGB_RL:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v0, v0, v0, v0}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 692
    const/4 v2, 0x0

    .line 696
    .end local v0    # "padding":I
    :cond_0
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mCompany:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "^[^{}]*$"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 697
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mCompany:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/yopeso/lieferando/R$string;->enter_only_valid_chars:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 698
    const/4 v2, 0x0

    .line 703
    :goto_7
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mFloor:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "^[^{}]*$"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_20

    .line 704
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mFloor:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/yopeso/lieferando/R$string;->enter_only_valid_chars:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 705
    const/4 v2, 0x0

    .line 711
    :goto_8
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mSpecialNotes:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "^[^{}]*$"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_21

    .line 712
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mSpecialNotes:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/yopeso/lieferando/R$string;->enter_only_valid_chars:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 713
    const/4 v2, 0x0

    .line 718
    :goto_9
    return v2

    .line 571
    :cond_1
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mFirstName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v7, :cond_2

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mFirstName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v10, :cond_3

    .line 572
    :cond_2
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mFirstName:Landroid/widget/EditText;

    sget v4, Lcom/yopeso/lieferando/R$string;->mandatory_field_limits_error_message:I

    invoke-virtual {p0, v4}, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 573
    const/4 v2, 0x0

    .line 574
    goto/16 :goto_0

    :cond_3
    const-string v3, "name"

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mFirstName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v3, "name"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yopeso/lieferando/model/user/Regexp;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/user/Regexp;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 575
    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mFirstName:Landroid/widget/EditText;

    const-string v3, "name"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yopeso/lieferando/model/user/Regexp;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/user/Regexp;->getMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 576
    const/4 v2, 0x0

    .line 577
    goto/16 :goto_0

    :cond_4
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mFirstName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "^[^{}]*$"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 578
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mFirstName:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/yopeso/lieferando/R$string;->enter_only_valid_chars:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 579
    const/4 v2, 0x0

    .line 580
    goto/16 :goto_0

    .line 581
    :cond_5
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mFirstName:Landroid/widget/EditText;

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 587
    :cond_6
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mLastName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v7, :cond_7

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mLastName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v10, :cond_8

    .line 588
    :cond_7
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mLastName:Landroid/widget/EditText;

    sget v4, Lcom/yopeso/lieferando/R$string;->mandatory_field_limits_error_message:I

    invoke-virtual {p0, v4}, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 589
    const/4 v2, 0x0

    .line 590
    goto/16 :goto_1

    :cond_8
    const-string v3, "lastname"

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mLastName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v3, "lastname"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yopeso/lieferando/model/user/Regexp;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/user/Regexp;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 591
    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mLastName:Landroid/widget/EditText;

    const-string v3, "lastname"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yopeso/lieferando/model/user/Regexp;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/user/Regexp;->getMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 592
    const/4 v2, 0x0

    .line 593
    goto/16 :goto_1

    :cond_9
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mLastName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "^[^{}]*$"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 594
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mLastName:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/yopeso/lieferando/R$string;->enter_only_valid_chars:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 595
    const/4 v2, 0x0

    .line 596
    goto/16 :goto_1

    .line 597
    :cond_a
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mLastName:Landroid/widget/EditText;

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 603
    :cond_b
    sget-object v3, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mEmail:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_c

    .line 604
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mEmail:Landroid/widget/EditText;

    sget v4, Lcom/yopeso/lieferando/R$string;->invalid_mail_format_error_message:I

    invoke-virtual {p0, v4}, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 605
    const/4 v2, 0x0

    .line 606
    goto/16 :goto_2

    :cond_c
    const-string v3, "email"

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mEmail:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v3, "email"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yopeso/lieferando/model/user/Regexp;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/user/Regexp;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 607
    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mEmail:Landroid/widget/EditText;

    const-string v3, "email"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yopeso/lieferando/model/user/Regexp;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/user/Regexp;->getMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 608
    const/4 v2, 0x0

    .line 609
    goto/16 :goto_2

    :cond_d
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mEmail:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "^[^{}]*$"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 610
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mEmail:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/yopeso/lieferando/R$string;->enter_only_valid_chars:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 611
    const/4 v2, 0x0

    .line 612
    goto/16 :goto_2

    .line 613
    :cond_e
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mEmail:Landroid/widget/EditText;

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 621
    :cond_f
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mPhone:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v9, :cond_10

    .line 622
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mPhone:Landroid/widget/EditText;

    sget v4, Lcom/yopeso/lieferando/R$string;->mandatory_field_error_message_incorect_phone:I

    invoke-virtual {p0, v4}, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 623
    const/4 v2, 0x0

    .line 624
    goto/16 :goto_3

    :cond_10
    const-string v3, "phone"

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mPhone:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v3, "phone"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yopeso/lieferando/model/user/Regexp;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/user/Regexp;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 625
    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mPhone:Landroid/widget/EditText;

    const-string v3, "phone"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yopeso/lieferando/model/user/Regexp;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/user/Regexp;->getMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 626
    const/4 v2, 0x0

    .line 627
    goto/16 :goto_3

    .line 628
    :cond_11
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mPhone:Landroid/widget/EditText;

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 632
    :cond_12
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mPhone:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 633
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mPhone:Landroid/widget/EditText;

    sget v4, Lcom/yopeso/lieferando/R$string;->mandatory_field_error_message:I

    invoke-virtual {p0, v4}, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 634
    const/4 v2, 0x0

    .line 635
    goto/16 :goto_3

    :cond_13
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mPhone:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v9, :cond_14

    .line 636
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mPhone:Landroid/widget/EditText;

    sget v4, Lcom/yopeso/lieferando/R$string;->mandatory_field_error_message_incorect_phone:I

    invoke-virtual {p0, v4}, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 637
    const/4 v2, 0x0

    .line 638
    goto/16 :goto_3

    :cond_14
    const-string v3, "phone_pl"

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mPhone:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v3, "phone_pl"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yopeso/lieferando/model/user/Regexp;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/user/Regexp;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 639
    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mPhone:Landroid/widget/EditText;

    const-string v3, "phone_pl"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yopeso/lieferando/model/user/Regexp;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/user/Regexp;->getMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 640
    const/4 v2, 0x0

    .line 641
    goto/16 :goto_3

    .line 642
    :cond_15
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mPhone:Landroid/widget/EditText;

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 649
    :cond_16
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mStreet:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v8, :cond_17

    .line 650
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mStreet:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    sget v5, Lcom/yopeso/lieferando/R$string;->mandatory_field_limits_error_message_street:I

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 651
    const/4 v2, 0x0

    .line 652
    goto/16 :goto_4

    :cond_17
    const-string v3, "street"

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mStreet:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v3, "street"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yopeso/lieferando/model/user/Regexp;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/user/Regexp;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 653
    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mStreet:Landroid/widget/EditText;

    const-string v3, "street"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yopeso/lieferando/model/user/Regexp;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/user/Regexp;->getMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 654
    const/4 v2, 0x0

    .line 655
    goto/16 :goto_4

    :cond_18
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mStreet:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "^[^{}]*$"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_19

    .line 656
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mStreet:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/yopeso/lieferando/R$string;->enter_only_valid_chars:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 657
    const/4 v2, 0x0

    .line 658
    goto/16 :goto_4

    .line 659
    :cond_19
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mStreet:Landroid/widget/EditText;

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 665
    :cond_1a
    const-string v3, "house"

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mNumber:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v3, "house"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yopeso/lieferando/model/user/Regexp;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/user/Regexp;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1b

    .line 666
    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mNumber:Landroid/widget/EditText;

    const-string v3, "house"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yopeso/lieferando/model/user/Regexp;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/user/Regexp;->getMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 667
    const/4 v2, 0x0

    .line 668
    goto/16 :goto_5

    :cond_1b
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mNumber:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "^[^{}]*$"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1c

    .line 669
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mNumber:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/yopeso/lieferando/R$string;->enter_only_valid_chars:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 670
    const/4 v2, 0x0

    .line 671
    goto/16 :goto_5

    .line 672
    :cond_1c
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mNumber:Landroid/widget/EditText;

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 678
    :cond_1d
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mCity:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "^[^{}]*$"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 679
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mCity:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/yopeso/lieferando/R$string;->enter_only_valid_chars:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 680
    const/4 v2, 0x0

    .line 681
    goto/16 :goto_6

    .line 682
    :cond_1e
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mCity:Landroid/widget/EditText;

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 700
    :cond_1f
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mCompany:Landroid/widget/EditText;

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 707
    :cond_20
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mFloor:Landroid/widget/EditText;

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 715
    :cond_21
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->mSpecialNotes:Landroid/widget/EditText;

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_9
.end method
