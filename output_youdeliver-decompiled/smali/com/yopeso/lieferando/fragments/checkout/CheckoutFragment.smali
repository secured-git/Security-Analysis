.class public Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;
.super Lcom/yopeso/lieferando/custom/LRFragment;
.source "CheckoutFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/yopeso/lieferando/callback/VoucherListCallback;
.implements Lcom/yopeso/lieferando/callback/StempelSelectedCallback;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$CreateAddressListener;,
        Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$OrderPostListener;,
        Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;,
        Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$SettingsListener;,
        Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$VoucherListener;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$yopeso$lieferando$fragments$checkout$CheckoutFragment$Payment:[I = null

.field public static final CANCEL_URL:Ljava/lang/String; = "http://order-did-cancel984.com"

.field public static final EXTRA_MSG:Ljava/lang/String; = "extra_message"

.field public static final EXTRA_POINTS:Ljava/lang/String; = "extra_points"

.field public static final FAIL_URL:Ljava/lang/String; = "http://order-did-fail1984.com"

.field public static final LOG_TAG:Ljava/lang/String; = "Checkout"

.field private static final PAYMENT_REQUEST_CODE:I = 0x2717

.field public static final SUCCESS_URL:Ljava/lang/String; = "http://order-did-success1984.com"

.field public static final TAG:Ljava/lang/String; = "CheckoutFragment"

.field public static saveNewAddress:Z


# instance fields
.field private isVoucherInvalid:Z

.field private isVoucherViewSet:Z

.field private mAddressEmail:Landroid/widget/TextView;

.field private mAddressLayout:Landroid/widget/LinearLayout;

.field private mAddressName:Landroid/widget/TextView;

.field private mAddressPhone:Landroid/widget/TextView;

.field private mAddressPostalCode:Landroid/widget/TextView;

.field private mAddressStreet:Landroid/widget/TextView;

.field private mCardRadio:Landroid/widget/RadioButton;

.field private mCardRadioFee:Landroid/widget/TextView;

.field private mCardRadioLL:Landroid/widget/LinearLayout;

.field private mCardsLayout:Landroid/widget/LinearLayout;

.field protected mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

.field private mCashRadio:Landroid/widget/RadioButton;

.field private mCashRadioFee:Landroid/widget/TextView;

.field private mCashRadioLL:Landroid/widget/LinearLayout;

.field private mClicknBuyRadio:Landroid/widget/RadioButton;

.field private mClicknBuyRadioFee:Landroid/widget/TextView;

.field private mClicknBuyRadioLL:Landroid/widget/LinearLayout;

.field private mDeliverDetails:Landroid/widget/TextView;

.field private mDeliverNowToggle:Landroid/widget/ToggleButton;

.field private mECLayout:Landroid/widget/LinearLayout;

.field private mECRadio:Landroid/widget/RadioButton;

.field private mECRadioFee:Landroid/widget/TextView;

.field private mECRadioLL:Landroid/widget/LinearLayout;

.field private mECTitle:Landroid/widget/TextView;

.field private mECValue:Landroid/widget/TextView;

.field private mEbanRadio:Landroid/widget/RadioButton;

.field private mEbanRadioFee:Landroid/widget/TextView;

.field private mEbanRadioLL:Landroid/widget/LinearLayout;

.field protected mHandler:Landroid/os/Handler;

.field private mIncompleteAdrError:Landroid/widget/TextView;

.field private mPayURadio:Landroid/widget/RadioButton;

.field private mPayURadioFee:Landroid/widget/TextView;

.field private mPayURadioLL:Landroid/widget/LinearLayout;

.field private mPaymentChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mPaypalRadio:Landroid/widget/RadioButton;

.field private mPaypalRadioFee:Landroid/widget/TextView;

.field private mPaypalRadioLL:Landroid/widget/LinearLayout;

.field private mPreorderToggle:Landroid/widget/ToggleButton;

.field private mSpecialDetails:Landroid/widget/EditText;

.field private mStandardAddressBtn:Landroid/widget/Button;

.field private mStempleView:Lcom/yopeso/lieferando/view/StempleView;

.field private mSubmitButton:Landroid/widget/Button;

.field private mVoucherTextWatcher:Landroid/text/TextWatcher;

.field private mVoucherView:Lcom/yopeso/lieferando/view/VoucherView;

.field private orderButtonEnabled:Z

.field private postBackup:Lcom/yopeso/lieferando/model/OrderResponse;

.field private savedInstances:Landroid/os/Bundle;

.field private vouchersStore:Lcom/yopeso/lieferando/util/VoucherStore;


# direct methods
.method static synthetic $SWITCH_TABLE$com$yopeso$lieferando$fragments$checkout$CheckoutFragment$Payment()[I
    .locals 3

    .prologue
    .line 107
    sget-object v0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->$SWITCH_TABLE$com$yopeso$lieferando$fragments$checkout$CheckoutFragment$Payment:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;->values()[Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;->bar:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_1
    :try_start_1
    sget-object v1, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;->clickandbuy:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_2
    :try_start_2
    sget-object v1, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;->credit:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_3
    :try_start_3
    sget-object v1, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;->ebanking:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_4
    :try_start_4
    sget-object v1, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;->ec:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_5
    :try_start_5
    sget-object v1, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;->paypal:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_6
    :try_start_6
    sget-object v1, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;->payu:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_7
    sput-object v0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->$SWITCH_TABLE$com$yopeso$lieferando$fragments$checkout$CheckoutFragment$Payment:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_7

    :catch_1
    move-exception v1

    goto :goto_6

    :catch_2
    move-exception v1

    goto :goto_5

    :catch_3
    move-exception v1

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_2

    :catch_6
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    sput-boolean v0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->saveNewAddress:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 256
    invoke-direct {p0}, Lcom/yopeso/lieferando/custom/LRFragment;-><init>()V

    .line 161
    iput-boolean v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->isVoucherInvalid:Z

    .line 162
    iput-boolean v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->isVoucherViewSet:Z

    .line 164
    new-instance v0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$1;

    invoke-direct {v0, p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$1;-><init>(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;)V

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mPaymentChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 233
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mHandler:Landroid/os/Handler;

    .line 236
    iput-boolean v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->orderButtonEnabled:Z

    .line 776
    new-instance v0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$2;

    invoke-direct {v0, p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$2;-><init>(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;)V

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mVoucherTextWatcher:Landroid/text/TextWatcher;

    .line 257
    return-void
.end method

.method static synthetic access$0(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;)Landroid/widget/RadioButton;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCashRadio:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$1(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;)Landroid/widget/RadioButton;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCardRadio:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$10(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;)V
    .locals 0

    .prologue
    .line 1506
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->displayPaymentDetails()V

    return-void
.end method

.method static synthetic access$11(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;)Z
    .locals 1

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->isVoucherViewSet:Z

    return v0
.end method

.method static synthetic access$12(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;)Lcom/yopeso/lieferando/view/VoucherView;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mVoucherView:Lcom/yopeso/lieferando/view/VoucherView;

    return-object v0
.end method

.method static synthetic access$13(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;Z)V
    .locals 0

    .prologue
    .line 161
    iput-boolean p1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->isVoucherInvalid:Z

    return-void
.end method

.method static synthetic access$14(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 996
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->showServerMaintenanceDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$15(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;Lcom/android/volley/VolleyError;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->handleNetworkError(Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method static synthetic access$16(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->dismissLoadingIndicator()V

    return-void
.end method

.method static synthetic access$17(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;)Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;
    .locals 1

    .prologue
    .line 391
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getSelectedPayment()Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$18(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;Lcom/yopeso/lieferando/model/OrderResponse;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->postBackup:Lcom/yopeso/lieferando/model/OrderResponse;

    return-void
.end method

.method static synthetic access$19(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;)Landroid/widget/ToggleButton;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mDeliverNowToggle:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic access$2(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;)Landroid/widget/RadioButton;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mPaypalRadio:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$20(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;Z)V
    .locals 0

    .prologue
    .line 623
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->enableDeliverMethod(Z)V

    return-void
.end method

.method static synthetic access$21(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;)V
    .locals 0

    .prologue
    .line 2313
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->removeStempel()V

    return-void
.end method

.method static synthetic access$23(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 1962
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->prepareOrder()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$24()Z
    .locals 1

    .prologue
    .line 1
    invoke-static {}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->deleySelection()Z

    move-result v0

    return v0
.end method

.method static synthetic access$25(J)V
    .locals 0

    .prologue
    .line 107
    sput-wide p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mLastClickTime:J

    return-void
.end method

.method static synthetic access$26(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;)V
    .locals 0

    .prologue
    .line 1209
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->redeemVoucher()V

    return-void
.end method

.method static synthetic access$27(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;)V
    .locals 0

    .prologue
    .line 1216
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->clearVoucher()V

    return-void
.end method

.method static synthetic access$28(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;)Lcom/yopeso/lieferando/view/StempleView;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mStempleView:Lcom/yopeso/lieferando/view/StempleView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;)Landroid/widget/RadioButton;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mEbanRadio:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$4(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;)Landroid/widget/RadioButton;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mClicknBuyRadio:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$5(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;)Landroid/widget/RadioButton;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mPayURadio:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$6(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;)Landroid/widget/RadioButton;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mECRadio:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$7(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;)V
    .locals 0

    .prologue
    .line 1755
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->displayVoucher()V

    return-void
.end method

.method static synthetic access$8(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;)V
    .locals 0

    .prologue
    .line 1807
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->displayStample()V

    return-void
.end method

.method static synthetic access$9(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;)Z
    .locals 1

    .prologue
    .line 1398
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->checkValidData()Z

    move-result v0

    return v0
.end method

.method private checkInvalid(Ljava/lang/String;)Z
    .locals 1
    .param p1, "t"    # Ljava/lang/String;

    .prologue
    .line 1959
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private checkValidData()Z
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/high16 v10, -0x10000

    const/4 v9, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1399
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getDeliveryAddress()Lcom/yopeso/lieferando/model/user/Location;

    move-result-object v2

    .line 1400
    .local v2, "location":Lcom/yopeso/lieferando/model/user/Location;
    invoke-direct {p0, v2}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getEmailAddress(Lcom/yopeso/lieferando/model/user/Location;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/yopeso/lieferando/model/user/Location;->setEmail(Ljava/lang/String;)V

    .line 1401
    invoke-direct {p0, v2}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getName(Lcom/yopeso/lieferando/model/user/Location;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/yopeso/lieferando/model/user/Location;->setName(Ljava/lang/String;)V

    .line 1402
    invoke-direct {p0, v2}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getPreName(Lcom/yopeso/lieferando/model/user/Location;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/yopeso/lieferando/model/user/Location;->setPreName(Ljava/lang/String;)V

    .line 1403
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/SettingsContent;->getRegexp()Ljava/util/Map;

    move-result-object v4

    .line 1404
    .local v4, "regexp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/yopeso/lieferando/model/user/Regexp;>;"
    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/Location;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->checkInvalid(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/Location;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v9, :cond_8

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/Location;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v8, 0x19

    if-gt v5, v8, :cond_8

    .line 1405
    const-string v5, "name"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/Location;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v5, "name"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yopeso/lieferando/model/user/Regexp;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/user/Regexp;->getFormat()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_0
    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/Location;->getCityName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->checkInvalid(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/Location;->getPreName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->checkInvalid(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 1406
    const-string v5, "lastname"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/Location;->getPreName()Ljava/lang/String;

    move-result-object v8

    const-string v5, "lastname"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yopeso/lieferando/model/user/Regexp;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/user/Regexp;->getFormat()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_1
    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/Location;->getPreName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v9, :cond_8

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/Location;->getPreName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v8, 0x19

    if-gt v5, v8, :cond_8

    .line 1407
    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/Location;->getEmail()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->checkInvalid(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string v5, "email"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/Location;->getEmail()Ljava/lang/String;

    move-result-object v8

    const-string v5, "email"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yopeso/lieferando/model/user/Regexp;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/user/Regexp;->getFormat()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1408
    :cond_2
    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/Location;->getStreet()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->checkInvalid(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string v5, "street"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/Location;->getStreet()Ljava/lang/String;

    move-result-object v8

    const-string v5, "street"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yopeso/lieferando/model/user/Regexp;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/user/Regexp;->getFormat()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_3
    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/Location;->getStreet()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v9, :cond_8

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/Location;->getStreet()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v8, 0x32

    if-gt v5, v8, :cond_8

    .line 1409
    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/Location;->getHnr()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->checkInvalid(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string v5, "house"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/Location;->getHnr()Ljava/lang/String;

    move-result-object v8

    const-string v5, "house"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yopeso/lieferando/model/user/Regexp;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/user/Regexp;->getFormat()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_4
    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/Location;->getPlz()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->checkInvalid(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 1410
    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/Location;->getAgb()Z

    move-result v5

    if-eqz v5, :cond_8

    move v0, v6

    .line 1423
    .local v0, "invalid":Z
    :goto_0
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v5

    invoke-interface {v5}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v5

    if-nez v5, :cond_9

    .line 1424
    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/Location;->getPhone()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->checkInvalid(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "phone"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/Location;->getPhone()Ljava/lang/String;

    move-result-object v8

    const-string v5, "phone"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yopeso/lieferando/model/user/Regexp;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/user/Regexp;->getFormat()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 1425
    :cond_5
    const/4 v0, 0x1

    .line 1434
    :cond_6
    :goto_1
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mPreorderToggle:Landroid/widget/ToggleButton;

    invoke-virtual {v5}, Landroid/widget/ToggleButton;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_c

    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mDeliverNowToggle:Landroid/widget/ToggleButton;

    invoke-virtual {v5}, Landroid/widget/ToggleButton;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_c

    move v1, v7

    .line 1436
    .local v1, "invalidTime":Z
    :goto_2
    if-eqz v0, :cond_e

    if-eqz v1, :cond_e

    .line 1440
    invoke-direct {p0, v6}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->enableOrderButton(Z)V

    .line 1441
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v11, v5}, Lcom/yopeso/lieferando/util/DensityUtils;->convertDpToPixel(ILandroid/content/Context;)I

    move-result v3

    .line 1442
    .local v3, "padding":I
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mAddressLayout:Landroid/widget/LinearLayout;

    sget v8, Lcom/yopeso/lieferando/R$drawable;->background_red_rounded:I

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 1443
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mAddressLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1444
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mIncompleteAdrError:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1445
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mDeliverDetails:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1446
    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/Location;->getAgb()Z

    move-result v5

    if-nez v5, :cond_d

    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->isLoggedIn()Z

    move-result v5

    if-nez v5, :cond_d

    .line 1447
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mIncompleteAdrError:Landroid/widget/TextView;

    sget v8, Lcom/yopeso/lieferando/R$string;->agb_not_set:I

    invoke-virtual {p0, v8}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1493
    .end local v3    # "padding":I
    :goto_3
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getSelectedPayment()Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    move-result-object v5

    if-nez v5, :cond_7

    .line 1494
    invoke-direct {p0, v6}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->enableOrderButton(Z)V

    .line 1496
    :cond_7
    if-nez v0, :cond_13

    if-nez v1, :cond_13

    :goto_4
    return v7

    .end local v0    # "invalid":Z
    .end local v1    # "invalidTime":Z
    :cond_8
    move v0, v7

    .line 1404
    goto/16 :goto_0

    .line 1428
    .restart local v0    # "invalid":Z
    :cond_9
    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/Location;->getPhone()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->checkInvalid(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a

    const-string v5, "phone_pl"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/Location;->getPhone()Ljava/lang/String;

    move-result-object v8

    const-string v5, "phone_pl"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yopeso/lieferando/model/user/Regexp;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/user/Regexp;->getFormat()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 1429
    :cond_a
    const/4 v0, 0x1

    .line 1430
    const-string v8, "CheckoutFragment"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v5, "invalid PHONE: "

    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/Location;->getAgb()Z

    move-result v5

    if-eqz v5, :cond_b

    move v5, v6

    :goto_5
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_b
    move v5, v7

    goto :goto_5

    :cond_c
    move v1, v6

    .line 1434
    goto/16 :goto_2

    .line 1450
    .restart local v1    # "invalidTime":Z
    .restart local v3    # "padding":I
    :cond_d
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mIncompleteAdrError:Landroid/widget/TextView;

    sget v8, Lcom/yopeso/lieferando/R$string;->address_incomplete:I

    invoke-virtual {p0, v8}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 1452
    .end local v3    # "padding":I
    :cond_e
    if-eqz v0, :cond_10

    .line 1456
    invoke-direct {p0, v6}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->enableOrderButton(Z)V

    .line 1457
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v11, v5}, Lcom/yopeso/lieferando/util/DensityUtils;->convertDpToPixel(ILandroid/content/Context;)I

    move-result v3

    .line 1458
    .restart local v3    # "padding":I
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mAddressLayout:Landroid/widget/LinearLayout;

    sget v8, Lcom/yopeso/lieferando/R$drawable;->background_red_rounded:I

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 1459
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mAddressLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1460
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mIncompleteAdrError:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1461
    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/Location;->getAgb()Z

    move-result v5

    if-nez v5, :cond_f

    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->isLoggedIn()Z

    move-result v5

    if-nez v5, :cond_f

    .line 1462
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mIncompleteAdrError:Landroid/widget/TextView;

    sget v8, Lcom/yopeso/lieferando/R$string;->agb_not_set:I

    invoke-virtual {p0, v8}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 1465
    :cond_f
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mIncompleteAdrError:Landroid/widget/TextView;

    sget v8, Lcom/yopeso/lieferando/R$string;->address_incomplete:I

    invoke-virtual {p0, v8}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 1467
    .end local v3    # "padding":I
    :cond_10
    if-eqz v1, :cond_11

    .line 1471
    invoke-direct {p0, v6}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->enableOrderButton(Z)V

    .line 1472
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mDeliverDetails:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1473
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mIncompleteAdrError:Landroid/widget/TextView;

    sget v8, Lcom/yopeso/lieferando/R$string;->address_incomplete:I

    invoke-virtual {p0, v8}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 1479
    :cond_11
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mIncompleteAdrError:Landroid/widget/TextView;

    const-string v8, ""

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1480
    invoke-direct {p0, v7}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->enableOrderButton(Z)V

    .line 1481
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mAddressLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6, v6, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1482
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mAddressLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x106000d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1483
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mIncompleteAdrError:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1484
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v5

    invoke-interface {v5}, Lcom/yopeso/lieferando/net/config/IConfig;->isTakeaway()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 1485
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mDeliverDetails:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/yopeso/lieferando/R$color;->text_grey:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_3

    .line 1488
    :cond_12
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mDeliverDetails:Landroid/widget/TextView;

    const/high16 v8, -0x1000000

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_3

    :cond_13
    move v7, v6

    .line 1496
    goto/16 :goto_4
.end method

.method private clearDeliveryMethods()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 607
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mDeliverNowToggle:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 608
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mPreorderToggle:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 609
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mDeliverNowToggle:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 610
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mPreorderToggle:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 611
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mDeliverNowToggle:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 612
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mPreorderToggle:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 613
    return-void
.end method

.method private clearVoucher()V
    .locals 2

    .prologue
    .line 1217
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mVoucherView:Lcom/yopeso/lieferando/view/VoucherView;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/view/VoucherView;->displayEmptyState()V

    .line 1218
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->setVoucherUsed(Z)V

    .line 1219
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->setVoucher(Lcom/yopeso/lieferando/model/user/Voucher;)V

    .line 1220
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/events/CartChangedEvent;

    invoke-direct {v1}, Lcom/yopeso/lieferando/events/CartChangedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 1221
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->displayPaymentDetails()V

    .line 1222
    return-void
.end method

.method private displayDeliveryAddress()V
    .locals 4

    .prologue
    .line 1268
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->isLoggedIn()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1269
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getFirstName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1270
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getDeliveryAddress()Lcom/yopeso/lieferando/model/user/Location;

    move-result-object v1

    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getFirstName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/user/Location;->setPreName(Ljava/lang/String;)V

    .line 1272
    :cond_0
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getLastName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1273
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getDeliveryAddress()Lcom/yopeso/lieferando/model/user/Location;

    move-result-object v1

    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getLastName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/user/Location;->setName(Ljava/lang/String;)V

    .line 1275
    :cond_1
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getEmail()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1276
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getDeliveryAddress()Lcom/yopeso/lieferando/model/user/Location;

    move-result-object v1

    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/user/Location;->setEmail(Ljava/lang/String;)V

    .line 1278
    :cond_2
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->savedInstances:Landroid/os/Bundle;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->savedInstances:Landroid/os/Bundle;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1279
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getDeliveryAddress()Lcom/yopeso/lieferando/model/user/Location;

    move-result-object v1

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->savedInstances:Landroid/os/Bundle;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/user/Location;->setPhone(Ljava/lang/String;)V

    .line 1287
    :cond_3
    :goto_0
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getPLZ()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1288
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getDeliveryAddress()Lcom/yopeso/lieferando/model/user/Location;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/Location;->getPlz()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yopeso/lieferando/util/StringUtils;->getStringOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getPLZ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1290
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getStreet()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v1, ""

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getDeliveryAddress()Lcom/yopeso/lieferando/model/user/Location;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/Location;->getStreet()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/yopeso/lieferando/util/StringUtils;->getStringOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1291
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getDeliveryAddress()Lcom/yopeso/lieferando/model/user/Location;

    move-result-object v1

    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getStreet()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/user/Location;->setStreet(Ljava/lang/String;)V

    .line 1293
    :cond_4
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getHouseNr()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v1, ""

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getDeliveryAddress()Lcom/yopeso/lieferando/model/user/Location;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/Location;->getHnr()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/yopeso/lieferando/util/StringUtils;->getStringOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1294
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getDeliveryAddress()Lcom/yopeso/lieferando/model/user/Location;

    move-result-object v1

    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getHouseNr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/user/Location;->setHnr(Ljava/lang/String;)V

    .line 1310
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getDeliveryAddress()Lcom/yopeso/lieferando/model/user/Location;

    move-result-object v0

    .line 1312
    .local v0, "deliveryAddr":Lcom/yopeso/lieferando/model/user/Location;
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mAddressName:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/Location;->getPreName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/yopeso/lieferando/util/StringUtils;->getStringOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/Location;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/yopeso/lieferando/util/StringUtils;->getStringOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1313
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mAddressStreet:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/Location;->getStreet()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/yopeso/lieferando/util/StringUtils;->getStringOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/Location;->getHnr()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/yopeso/lieferando/util/StringUtils;->getStringOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1314
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mAddressPostalCode:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/Location;->getCityName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/Location;->getPlz()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1315
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->savedInstances:Landroid/os/Bundle;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->savedInstances:Landroid/os/Bundle;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 1316
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mAddressPhone:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->savedInstances:Landroid/os/Bundle;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1322
    :goto_2
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mAddressEmail:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getEmailAddress(Lcom/yopeso/lieferando/model/user/Location;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1323
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mSpecialDetails:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/Location;->getComment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1326
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->isLoggedIn()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1327
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mStandardAddressBtn:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1333
    :goto_3
    return-void

    .line 1282
    .end local v0    # "deliveryAddr":Lcom/yopeso/lieferando/model/user/Location;
    :cond_6
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getTel()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1283
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getDeliveryAddress()Lcom/yopeso/lieferando/model/user/Location;

    move-result-object v1

    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getTel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/user/Location;->setPhone(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1300
    :cond_7
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getDeliveryAddress()Lcom/yopeso/lieferando/model/user/Location;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/Location;->getPreName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1301
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getDeliveryAddress()Lcom/yopeso/lieferando/model/user/Location;

    move-result-object v1

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getDeliveryAddress()Lcom/yopeso/lieferando/model/user/Location;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getPreName(Lcom/yopeso/lieferando/model/user/Location;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/user/Location;->setPreName(Ljava/lang/String;)V

    .line 1304
    :cond_8
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getDeliveryAddress()Lcom/yopeso/lieferando/model/user/Location;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/Location;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1305
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getDeliveryAddress()Lcom/yopeso/lieferando/model/user/Location;

    move-result-object v1

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getDeliveryAddress()Lcom/yopeso/lieferando/model/user/Location;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getName(Lcom/yopeso/lieferando/model/user/Location;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/user/Location;->setName(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1319
    .restart local v0    # "deliveryAddr":Lcom/yopeso/lieferando/model/user/Location;
    :cond_9
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mAddressPhone:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/Location;->getPhone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1329
    :cond_a
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mStandardAddressBtn:Landroid/widget/Button;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_3
.end method

.method private displayDeliveryTime()V
    .locals 12

    .prologue
    const/16 v11, 0x1c20

    const/16 v10, 0x8

    const/4 v6, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1702
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v2

    sget-object v3, Lcom/yopeso/lieferando/LieferandoApplication;->sCurrentDate:Ljava/util/Date;

    invoke-virtual {v2, v3}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOpen(Ljava/util/Date;)Z

    move-result v1

    .line 1704
    .local v1, "restaurantOpen":Z
    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getPreorderOffset()I

    move-result v2

    if-ge v2, v11, :cond_3

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->isDeliverNow()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1706
    invoke-direct {p0, v9}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->enableDeliverMethod(Z)V

    .line 1707
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mDeliverDetails:Landroid/widget/TextView;

    sget v3, Lcom/yopeso/lieferando/R$string;->soon_as_possible:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1708
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mDeliverNowToggle:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v9}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 1709
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mPreorderToggle:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v9}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 1738
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getPreorderOffset()I

    move-result v2

    if-lt v2, v11, :cond_1

    .line 1739
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mDeliverNowToggle:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v8}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 1743
    :cond_1
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isPreoderEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1745
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mDeliverDetails:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/yopeso/lieferando/R$string;->preorder_rebate_forbidden:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1746
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mDeliverDetails:Landroid/widget/TextView;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1747
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mPreorderToggle:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v8}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 1748
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mPreorderToggle:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v10}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 1750
    :cond_2
    return-void

    .line 1711
    :cond_3
    if-eqz v1, :cond_4

    .line 1712
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mDeliverNowToggle:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v9}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 1716
    :goto_1
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mPreorderToggle:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v9}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 1717
    invoke-direct {p0, v8}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->enableDeliverMethod(Z)V

    .line 1718
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v2

    sget-object v3, Lcom/yopeso/lieferando/LieferandoApplication;->sCurrentDate:Ljava/util/Date;

    invoke-virtual {v2, v3}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getWeekOpenings(Ljava/util/Date;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1719
    .local v0, "openings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Date;>;"
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getDeliveryTime()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_5

    .line 1722
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mDeliverDetails:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/yopeso/lieferando/R$string;->deliver_at_time:I

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getSimpleDateFormatterReverse()Ljava/text/SimpleDateFormat;

    move-result-object v7

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Date;

    invoke-virtual {v7, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v8

    .line 1723
    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getTimeFormatter()Ljava/text/SimpleDateFormat;

    move-result-object v7

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Date;

    invoke-virtual {v7, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v9

    .line 1722
    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1724
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Date;

    invoke-virtual {v3, v2}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->setDeliveryTime(Ljava/util/Date;)V

    goto/16 :goto_0

    .line 1714
    .end local v0    # "openings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Date;>;"
    :cond_4
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mDeliverNowToggle:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v8}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    goto :goto_1

    .line 1725
    .restart local v0    # "openings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Date;>;"
    :cond_5
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getDeliveryTime()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 1727
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mDeliverDetails:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/yopeso/lieferando/R$string;->deliver_at_time:I

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getSimpleDateFormatterReverse()Ljava/text/SimpleDateFormat;

    move-result-object v6

    iget-object v7, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getDeliveryTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    .line 1728
    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getTimeFormatter()Ljava/text/SimpleDateFormat;

    move-result-object v6

    iget-object v7, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getDeliveryTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    .line 1727
    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1729
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1731
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mDeliverDetails:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/yopeso/lieferando/R$string;->order_not_possible:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1732
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->clearDeliveryMethods()V

    .line 1733
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mDeliverNowToggle:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v8}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 1734
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mPreorderToggle:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v8}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    goto/16 :goto_0
.end method

.method private displayPaymentDetails()V
    .locals 14

    .prologue
    .line 1507
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getView()Landroid/view/View;

    move-result-object v4

    .line 1508
    .local v4, "view":Landroid/view/View;
    sget v5, Lcom/yopeso/lieferando/R$id;->orderTotal:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/yopeso/lieferando/R$string;->price:I

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v10

    iget-object v11, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v11}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getCostWithoutVoucher()I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x42c80000    # 100.0f

    div-float/2addr v11, v12

    float-to-double v12, v11

    invoke-virtual {v10, v12, v13}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1510
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->isStampleUsed()Z

    move-result v5

    if-eqz v5, :cond_11

    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v5

    if-eqz v5, :cond_11

    .line 1511
    sget v5, Lcom/yopeso/lieferando/R$id;->stempelValue:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/yopeso/lieferando/R$string;->price_minus:I

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    .line 1512
    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v10

    iget-object v11, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v11}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v11

    invoke-virtual {v11}, Lcom/yopeso/lieferando/model/Stamp;->getDiscountValue()I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x42c80000    # 100.0f

    div-float/2addr v11, v12

    float-to-double v12, v11

    invoke-virtual {v10, v12, v13}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 1511
    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1513
    sget v5, Lcom/yopeso/lieferando/R$id;->StempelValueLayout:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1518
    :goto_0
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->isRebateUsed()Z

    move-result v5

    if-eqz v5, :cond_14

    .line 1519
    sget v5, Lcom/yopeso/lieferando/R$id;->RebateValueLayout:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1520
    sget v5, Lcom/yopeso/lieferando/R$id;->rebateValue:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/yopeso/lieferando/R$string;->price_minus:I

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    .line 1521
    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v10

    iget-object v11, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v11}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRebateDiscount()I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x42c80000    # 100.0f

    div-float/2addr v11, v12

    float-to-double v12, v11

    invoke-virtual {v10, v12, v13}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 1520
    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1522
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v5

    if-eqz v5, :cond_13

    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/Stamp;->getFirstDiscount()Lcom/yopeso/lieferando/model/Discount;

    move-result-object v5

    if-eqz v5, :cond_13

    .line 1523
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/Stamp;->getFirstDiscount()Lcom/yopeso/lieferando/model/Discount;

    move-result-object v0

    .line 1524
    .local v0, "discount":Lcom/yopeso/lieferando/model/Discount;
    const-string v2, ""

    .line 1525
    .local v2, "msg":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/Discount;->getmKind()I

    move-result v5

    if-nez v5, :cond_0

    .line 1526
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/Discount;->getmRabatt()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "% "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1528
    :cond_0
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/Discount;->ismNewCustomer()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 1530
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v6, Lcom/yopeso/lieferando/R$string;->new_customer_rebate_title:I

    invoke-virtual {p0, v6}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1531
    sget v5, Lcom/yopeso/lieferando/R$id;->rebateTitle:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1546
    .end local v0    # "discount":Lcom/yopeso/lieferando/model/Discount;
    .end local v2    # "msg":Ljava/lang/String;
    :goto_1
    sget v5, Lcom/yopeso/lieferando/R$id;->deliveryValue:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/yopeso/lieferando/R$string;->price:I

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v10

    iget-object v11, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v11}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getShippingCost()I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x42c80000    # 100.0f

    div-float/2addr v11, v12

    float-to-double v12, v11

    invoke-virtual {v10, v12, v13}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1547
    sget v5, Lcom/yopeso/lieferando/R$id;->TotalPrice:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/yopeso/lieferando/R$string;->price:I

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v10

    iget-object v11, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v11}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getCostWithShipping()I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x42c80000    # 100.0f

    div-float/2addr v11, v12

    float-to-double v12, v11

    invoke-virtual {v10, v12, v13}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1549
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v5

    invoke-static {v5}, Lcom/yopeso/lieferando/util/PaymentSettingsUtil;->getInstance(Lcom/yopeso/lieferando/model/SettingsContent;)Lcom/yopeso/lieferando/util/PaymentSettingsUtil;

    move-result-object v3

    .line 1551
    .local v3, "payment":Lcom/yopeso/lieferando/util/PaymentSettingsUtil;
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/yopeso/lieferando/util/PaymentSettingsUtil;->isCashAvailable(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Z

    move-result v5

    if-nez v5, :cond_15

    .line 1552
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCashRadioLL:Landroid/widget/LinearLayout;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1563
    :cond_1
    :goto_2
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/yopeso/lieferando/util/PaymentSettingsUtil;->isPaypalAvailable(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Z

    move-result v5

    if-nez v5, :cond_16

    .line 1564
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mPaypalRadioLL:Landroid/widget/LinearLayout;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1574
    :cond_2
    :goto_3
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/yopeso/lieferando/util/PaymentSettingsUtil;->isCreditAvailable(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Z

    move-result v5

    if-nez v5, :cond_17

    .line 1575
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCardRadio:Landroid/widget/RadioButton;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 1576
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getView()Landroid/view/View;

    move-result-object v5

    sget v6, Lcom/yopeso/lieferando/R$id;->CardPaymentIcons:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1587
    :cond_3
    :goto_4
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/yopeso/lieferando/util/PaymentSettingsUtil;->isEbankingAvailable(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Z

    move-result v5

    if-nez v5, :cond_18

    .line 1588
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mEbanRadioLL:Landroid/widget/LinearLayout;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1599
    :cond_4
    :goto_5
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/yopeso/lieferando/util/PaymentSettingsUtil;->isClickAndBuyAvailable(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Z

    move-result v5

    if-nez v5, :cond_19

    .line 1600
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mClicknBuyRadioLL:Landroid/widget/LinearLayout;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1611
    :cond_5
    :goto_6
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/yopeso/lieferando/util/PaymentSettingsUtil;->isPayUAvailable(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 1612
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mPayURadioLL:Landroid/widget/LinearLayout;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1618
    :cond_6
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v5

    invoke-interface {v5}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v5

    if-nez v5, :cond_9

    .line 1619
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/yopeso/lieferando/util/PaymentSettingsUtil;->isECAvailable(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Z

    move-result v5

    if-nez v5, :cond_1a

    .line 1620
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mECRadioLL:Landroid/widget/LinearLayout;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1633
    :cond_7
    :goto_7
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mECRadio:Landroid/widget/RadioButton;

    invoke-virtual {v5}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 1635
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mECLayout:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1636
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getECPaymentFee()I

    move-result v5

    if-eqz v5, :cond_8

    .line 1637
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mECValue:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/yopeso/lieferando/R$string;->fee_price:I

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v10

    iget-object v11, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v11}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v11

    invoke-virtual {v11}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getECPaymentFee()I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x42c80000    # 100.0f

    div-float/2addr v11, v12

    float-to-double v12, v11

    invoke-virtual {v10, v12, v13}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1645
    :cond_8
    :goto_8
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->setFeeValue()V

    .line 1649
    :cond_9
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->isVoucherUsed()Z

    move-result v5

    if-eqz v5, :cond_1c

    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getVoucher()Lcom/yopeso/lieferando/model/user/Voucher;

    move-result-object v5

    if-eqz v5, :cond_1c

    .line 1650
    sget v5, Lcom/yopeso/lieferando/R$id;->voucherValue:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/yopeso/lieferando/R$string;->price_minus:I

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    .line 1651
    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v10

    iget-object v11, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v11}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getVoucher()Lcom/yopeso/lieferando/model/user/Voucher;

    move-result-object v11

    iget-object v12, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v12}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getCostWithoutVoucher()I

    move-result v12

    iget-object v13, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v13}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getShippingCost()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual {v11, v12}, Lcom/yopeso/lieferando/model/user/Voucher;->getVoucherValue(I)I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x42c80000    # 100.0f

    div-float/2addr v11, v12

    float-to-double v12, v11

    invoke-virtual {v10, v12, v13}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 1650
    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1652
    sget v5, Lcom/yopeso/lieferando/R$id;->VoucherValueLayout:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1654
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v5

    invoke-interface {v5}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v5

    if-nez v5, :cond_10

    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v5

    invoke-interface {v5}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v5

    if-nez v5, :cond_10

    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getCostWithoutVoucher()I

    move-result v5

    iget-object v6, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v6}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getShippingCost()I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v6}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getVoucher()Lcom/yopeso/lieferando/model/user/Voucher;

    move-result-object v6

    iget-object v7, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getCostWithoutVoucher()I

    move-result v7

    iget-object v8, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v8}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getShippingCost()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v6, v7}, Lcom/yopeso/lieferando/model/user/Voucher;->getVoucherValue(I)I

    move-result v6

    if-gt v5, v6, :cond_10

    .line 1656
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCashRadioLL:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1658
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/yopeso/lieferando/util/PaymentSettingsUtil;->isPaypalAvailable(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1659
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mPaypalRadioLL:Landroid/widget/LinearLayout;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1661
    :cond_a
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/yopeso/lieferando/util/PaymentSettingsUtil;->isCreditAvailable(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1662
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCardRadio:Landroid/widget/RadioButton;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 1663
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getView()Landroid/view/View;

    move-result-object v5

    sget v6, Lcom/yopeso/lieferando/R$id;->CardPaymentIcons:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1664
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCardRadioFee:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1666
    :cond_b
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/yopeso/lieferando/util/PaymentSettingsUtil;->isEbankingAvailable(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1667
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mEbanRadioLL:Landroid/widget/LinearLayout;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1669
    :cond_c
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/yopeso/lieferando/util/PaymentSettingsUtil;->isClickAndBuyAvailable(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1670
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mClicknBuyRadioLL:Landroid/widget/LinearLayout;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1672
    :cond_d
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/yopeso/lieferando/util/PaymentSettingsUtil;->isPayUAvailable(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1673
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mPayURadioLL:Landroid/widget/LinearLayout;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1675
    :cond_e
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/yopeso/lieferando/util/PaymentSettingsUtil;->isECAvailable(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1676
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mECRadioLL:Landroid/widget/LinearLayout;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1679
    :cond_f
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCashRadio:Landroid/widget/RadioButton;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1680
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCardRadio:Landroid/widget/RadioButton;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1681
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mPaypalRadio:Landroid/widget/RadioButton;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1682
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mEbanRadio:Landroid/widget/RadioButton;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1683
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mClicknBuyRadio:Landroid/widget/RadioButton;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1684
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mPayURadio:Landroid/widget/RadioButton;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1685
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mECRadio:Landroid/widget/RadioButton;

    if-eqz v5, :cond_10

    .line 1686
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mECRadio:Landroid/widget/RadioButton;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1692
    :cond_10
    :goto_9
    return-void

    .line 1515
    .end local v3    # "payment":Lcom/yopeso/lieferando/util/PaymentSettingsUtil;
    :cond_11
    sget v5, Lcom/yopeso/lieferando/R$id;->StempelValueLayout:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 1534
    .restart local v0    # "discount":Lcom/yopeso/lieferando/model/Discount;
    .restart local v2    # "msg":Ljava/lang/String;
    :cond_12
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v6, Lcom/yopeso/lieferando/R$string;->rebate_title:I

    invoke-virtual {p0, v6}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1535
    sget v5, Lcom/yopeso/lieferando/R$id;->rebateTitle:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1539
    .end local v0    # "discount":Lcom/yopeso/lieferando/model/Discount;
    .end local v2    # "msg":Ljava/lang/String;
    :cond_13
    sget v5, Lcom/yopeso/lieferando/R$id;->RebateValueLayout:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 1543
    :cond_14
    sget v5, Lcom/yopeso/lieferando/R$id;->RebateValueLayout:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 1555
    .restart local v3    # "payment":Lcom/yopeso/lieferando/util/PaymentSettingsUtil;
    :cond_15
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCashRadioLL:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1557
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v5

    const-string v6, "bar"

    invoke-virtual {v5, v6}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getPaymentFee(Ljava/lang/String;)I

    move-result v1

    .line 1558
    .local v1, "fee":I
    if-eqz v1, :cond_1

    .line 1559
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCashRadioFee:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/yopeso/lieferando/R$string;->fee_price:I

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v10

    int-to-float v11, v1

    const/high16 v12, 0x42c80000    # 100.0f

    div-float/2addr v11, v12

    float-to-double v12, v11

    invoke-virtual {v10, v12, v13}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1568
    .end local v1    # "fee":I
    :cond_16
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mPaypalRadioLL:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1569
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v5

    const-string v6, "paypal"

    invoke-virtual {v5, v6}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getPaymentFee(Ljava/lang/String;)I

    move-result v1

    .line 1570
    .restart local v1    # "fee":I
    if-eqz v1, :cond_2

    .line 1571
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mPaypalRadioFee:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/yopeso/lieferando/R$string;->fee_price:I

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v10

    int-to-float v11, v1

    const/high16 v12, 0x42c80000    # 100.0f

    div-float/2addr v11, v12

    float-to-double v12, v11

    invoke-virtual {v10, v12, v13}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 1579
    .end local v1    # "fee":I
    :cond_17
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCardRadio:Landroid/widget/RadioButton;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 1580
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getView()Landroid/view/View;

    move-result-object v5

    sget v6, Lcom/yopeso/lieferando/R$id;->CardPaymentIcons:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1582
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v5

    const-string v6, "credit"

    invoke-virtual {v5, v6}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getPaymentFee(Ljava/lang/String;)I

    move-result v1

    .line 1583
    .restart local v1    # "fee":I
    if-eqz v1, :cond_3

    .line 1584
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCardRadioFee:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/yopeso/lieferando/R$string;->fee_price:I

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v10

    int-to-float v11, v1

    const/high16 v12, 0x42c80000    # 100.0f

    div-float/2addr v11, v12

    float-to-double v12, v11

    invoke-virtual {v10, v12, v13}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 1591
    .end local v1    # "fee":I
    :cond_18
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mEbanRadioLL:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1593
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v5

    const-string v6, "ebanking"

    invoke-virtual {v5, v6}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getPaymentFee(Ljava/lang/String;)I

    move-result v1

    .line 1594
    .restart local v1    # "fee":I
    if-eqz v1, :cond_4

    .line 1595
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mEbanRadioFee:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/yopeso/lieferando/R$string;->fee_price:I

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v10

    int-to-float v11, v1

    const/high16 v12, 0x42c80000    # 100.0f

    div-float/2addr v11, v12

    float-to-double v12, v11

    invoke-virtual {v10, v12, v13}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 1603
    .end local v1    # "fee":I
    :cond_19
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mClicknBuyRadioLL:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1605
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v5

    const-string v6, "clickandbuy"

    invoke-virtual {v5, v6}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getPaymentFee(Ljava/lang/String;)I

    move-result v1

    .line 1606
    .restart local v1    # "fee":I
    if-eqz v1, :cond_5

    .line 1607
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mClicknBuyRadioFee:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/yopeso/lieferando/R$string;->fee_price:I

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v10

    int-to-float v11, v1

    const/high16 v12, 0x42c80000    # 100.0f

    div-float/2addr v11, v12

    float-to-double v12, v11

    invoke-virtual {v10, v12, v13}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 1623
    .end local v1    # "fee":I
    :cond_1a
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mECRadioLL:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1624
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mECRadio:Landroid/widget/RadioButton;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 1626
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getECPaymentFee()I

    move-result v1

    .line 1627
    .restart local v1    # "fee":I
    if-eqz v1, :cond_7

    .line 1628
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mECRadioFee:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/yopeso/lieferando/R$string;->fee_price:I

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v10

    int-to-float v11, v1

    const/high16 v12, 0x42c80000    # 100.0f

    div-float/2addr v11, v12

    float-to-double v12, v11

    invoke-virtual {v10, v12, v13}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 1642
    .end local v1    # "fee":I
    :cond_1b
    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mECLayout:Landroid/widget/LinearLayout;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_8

    .line 1689
    :cond_1c
    sget v5, Lcom/yopeso/lieferando/R$id;->VoucherValueLayout:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_9
.end method

.method private displayStample()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1808
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getSelectedPayment()Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    move-result-object v0

    sget-object v1, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;->paypal:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getSelectedPayment()Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    move-result-object v0

    sget-object v1, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;->ebanking:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getSelectedPayment()Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    move-result-object v0

    sget-object v1, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;->credit:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    if-eq v0, v1, :cond_0

    .line 1809
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getSelectedPayment()Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    move-result-object v0

    sget-object v1, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;->payu:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    if-ne v0, v1, :cond_d

    .line 1811
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getSelectedPayment()Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->setPaymentType(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;)V

    .line 1818
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->isDeliverNow()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v0

    sget-object v1, Lcom/yopeso/lieferando/LieferandoApplication;->sCurrentDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOpen(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1819
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1820
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mStempleView:Lcom/yopeso/lieferando/view/StempleView;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/view/StempleView;->enableStample()V

    .line 1821
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getPaymentType()Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    move-result-object v0

    sget-object v1, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;->payu:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getPaymentType()Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    move-result-object v0

    sget-object v1, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;->credit:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    if-ne v0, v1, :cond_2

    .line 1822
    :cond_1
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->isRebateUsed()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/Stamp;->getFirstDiscount()Lcom/yopeso/lieferando/model/Discount;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/Stamp;->getFirstDiscount()Lcom/yopeso/lieferando/model/Discount;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/Discount;->ismNewCustomer()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1824
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->removeStempel()V

    .line 1826
    :cond_2
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->isStampleUsed()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->isRebateUsed()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1827
    :cond_4
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mStempleView:Lcom/yopeso/lieferando/view/StempleView;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/StempleView;->diselectOthers(Lcom/yopeso/lieferando/model/Stamp;)V

    .line 1828
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->clearVoucher()V

    .line 1869
    :cond_5
    :goto_0
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->displayPaymentDetails()V

    .line 1953
    :cond_6
    :goto_1
    return-void

    .line 1835
    :cond_7
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->isRebateUsed()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1836
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/Stamp;->getFirstDiscount()Lcom/yopeso/lieferando/model/Discount;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 1837
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/Stamp;->getFirstDiscount()Lcom/yopeso/lieferando/model/Discount;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/Discount;->ismNewCustomer()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1838
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mStempleView:Lcom/yopeso/lieferando/view/StempleView;

    sget v1, Lcom/yopeso/lieferando/R$string;->login_to_use_newcustomer_rebate:I

    invoke-virtual {p0, v1}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v0, v1, v3, v2}, Lcom/yopeso/lieferando/view/StempleView;->disableStample(Ljava/lang/String;ZLcom/yopeso/lieferando/model/cart/ShoppingCart;)V

    .line 1839
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v0, v5}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->setStamp(Lcom/yopeso/lieferando/model/Stamp;)V

    .line 1840
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v0, v4}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->setStempleUsed(Z)V

    .line 1856
    :cond_8
    :goto_2
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->displayPaymentDetails()V

    goto :goto_0

    .line 1844
    :cond_9
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mStempleView:Lcom/yopeso/lieferando/view/StempleView;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/StempleView;->diselectOthers(Lcom/yopeso/lieferando/model/Stamp;)V

    .line 1845
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->clearVoucher()V

    goto :goto_2

    .line 1852
    :cond_a
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mStempleView:Lcom/yopeso/lieferando/view/StempleView;

    sget v1, Lcom/yopeso/lieferando/R$string;->stempel_login_to_use:I

    invoke-virtual {p0, v1}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v0, v1, v3, v2}, Lcom/yopeso/lieferando/view/StempleView;->disableStample(Ljava/lang/String;ZLcom/yopeso/lieferando/model/cart/ShoppingCart;)V

    .line 1853
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v0, v5}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->setStamp(Lcom/yopeso/lieferando/model/Stamp;)V

    .line 1854
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v0, v4}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->setStempleUsed(Z)V

    goto :goto_2

    .line 1861
    :cond_b
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->isDeliverNow()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1862
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mStempleView:Lcom/yopeso/lieferando/view/StempleView;

    sget v1, Lcom/yopeso/lieferando/R$string;->stempel_text_default:I

    invoke-virtual {p0, v1}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v0, v1, v3, v2}, Lcom/yopeso/lieferando/view/StempleView;->disableStample(Ljava/lang/String;ZLcom/yopeso/lieferando/model/cart/ShoppingCart;)V

    goto/16 :goto_0

    .line 1865
    :cond_c
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mStempleView:Lcom/yopeso/lieferando/view/StempleView;

    sget v1, Lcom/yopeso/lieferando/R$string;->preorder_rebate_forbidden:I

    invoke-virtual {p0, v1}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v0, v1, v3, v2}, Lcom/yopeso/lieferando/view/StempleView;->disableStample(Ljava/lang/String;ZLcom/yopeso/lieferando/model/cart/ShoppingCart;)V

    goto/16 :goto_0

    .line 1872
    :cond_d
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->isDeliverNow()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v0

    sget-object v1, Lcom/yopeso/lieferando/LieferandoApplication;->sCurrentDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOpen(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1873
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1874
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mStempleView:Lcom/yopeso/lieferando/view/StempleView;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/view/StempleView;->enableStample()V

    .line 1876
    :cond_e
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->isRebateUsed()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1877
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/Stamp;->getFirstDiscount()Lcom/yopeso/lieferando/model/Discount;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1878
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/Stamp;->getFirstDiscount()Lcom/yopeso/lieferando/model/Discount;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/Discount;->ismNewCustomer()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1880
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1881
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->isDeliverNow()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1882
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mStempleView:Lcom/yopeso/lieferando/view/StempleView;

    sget v1, Lcom/yopeso/lieferando/R$string;->rebate_only_online_payment:I

    invoke-virtual {p0, v1}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v0, v1, v3, v2}, Lcom/yopeso/lieferando/view/StempleView;->disableStample(Ljava/lang/String;ZLcom/yopeso/lieferando/model/cart/ShoppingCart;)V

    .line 1899
    :goto_3
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v0, v5}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->setStamp(Lcom/yopeso/lieferando/model/Stamp;)V

    .line 1900
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v0, v4}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->setStempleUsed(Z)V

    .line 1901
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v0, v4}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->setRebateUsed(Z)V

    .line 1902
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getSelectedPayment()Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->setPaymentType(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;)V

    .line 1903
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->displayPaymentDetails()V

    goto/16 :goto_1

    .line 1885
    :cond_f
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mStempleView:Lcom/yopeso/lieferando/view/StempleView;

    sget v1, Lcom/yopeso/lieferando/R$string;->preorder_rebate_forbidden:I

    invoke-virtual {p0, v1}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v0, v1, v3, v2}, Lcom/yopeso/lieferando/view/StempleView;->disableStample(Ljava/lang/String;ZLcom/yopeso/lieferando/model/cart/ShoppingCart;)V

    goto :goto_3

    .line 1890
    :cond_10
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->isDeliverNow()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1891
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mStempleView:Lcom/yopeso/lieferando/view/StempleView;

    sget v1, Lcom/yopeso/lieferando/R$string;->login_to_use_newcustomer_rebate:I

    invoke-virtual {p0, v1}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v0, v1, v3, v2}, Lcom/yopeso/lieferando/view/StempleView;->disableStample(Ljava/lang/String;ZLcom/yopeso/lieferando/model/cart/ShoppingCart;)V

    goto :goto_3

    .line 1894
    :cond_11
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mStempleView:Lcom/yopeso/lieferando/view/StempleView;

    sget v1, Lcom/yopeso/lieferando/R$string;->preorder_rebate_forbidden:I

    invoke-virtual {p0, v1}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v0, v1, v3, v2}, Lcom/yopeso/lieferando/view/StempleView;->disableStample(Ljava/lang/String;ZLcom/yopeso/lieferando/model/cart/ShoppingCart;)V

    goto :goto_3

    .line 1908
    :cond_12
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->isDeliverNow()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1909
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mStempleView:Lcom/yopeso/lieferando/view/StempleView;

    sget v1, Lcom/yopeso/lieferando/R$string;->stempel_text_default:I

    invoke-virtual {p0, v1}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v0, v1, v3, v2}, Lcom/yopeso/lieferando/view/StempleView;->disableStample(Ljava/lang/String;ZLcom/yopeso/lieferando/model/cart/ShoppingCart;)V

    .line 1910
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mStempleView:Lcom/yopeso/lieferando/view/StempleView;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/StempleView;->diselectOthers(Lcom/yopeso/lieferando/model/Stamp;)V

    .line 1915
    :goto_4
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->displayPaymentDetails()V

    goto/16 :goto_1

    .line 1913
    :cond_13
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mStempleView:Lcom/yopeso/lieferando/view/StempleView;

    sget v1, Lcom/yopeso/lieferando/R$string;->preorder_rebate_forbidden:I

    invoke-virtual {p0, v1}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v0, v1, v3, v2}, Lcom/yopeso/lieferando/view/StempleView;->disableStample(Ljava/lang/String;ZLcom/yopeso/lieferando/model/cart/ShoppingCart;)V

    goto :goto_4

    .line 1922
    :cond_14
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->isDeliverNow()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1923
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mStempleView:Lcom/yopeso/lieferando/view/StempleView;

    sget v1, Lcom/yopeso/lieferando/R$string;->stempel_text_default:I

    invoke-virtual {p0, v1}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v0, v1, v3, v2}, Lcom/yopeso/lieferando/view/StempleView;->disableStample(Ljava/lang/String;ZLcom/yopeso/lieferando/model/cart/ShoppingCart;)V

    .line 1928
    :goto_5
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v0, v5}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->setStamp(Lcom/yopeso/lieferando/model/Stamp;)V

    .line 1929
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v0, v4}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->setStempleUsed(Z)V

    .line 1930
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v0, v4}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->setRebateUsed(Z)V

    .line 1931
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getSelectedPayment()Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->setPaymentType(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;)V

    .line 1932
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->displayPaymentDetails()V

    goto/16 :goto_1

    .line 1926
    :cond_15
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mStempleView:Lcom/yopeso/lieferando/view/StempleView;

    sget v1, Lcom/yopeso/lieferando/R$string;->preorder_rebate_forbidden:I

    invoke-virtual {p0, v1}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v0, v1, v3, v2}, Lcom/yopeso/lieferando/view/StempleView;->disableStample(Ljava/lang/String;ZLcom/yopeso/lieferando/model/cart/ShoppingCart;)V

    goto :goto_5

    .line 1936
    :cond_16
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->isDeliverNow()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1937
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mStempleView:Lcom/yopeso/lieferando/view/StempleView;

    sget v1, Lcom/yopeso/lieferando/R$string;->stempel_text_default:I

    invoke-virtual {p0, v1}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v0, v1, v3, v2}, Lcom/yopeso/lieferando/view/StempleView;->disableStample(Ljava/lang/String;ZLcom/yopeso/lieferando/model/cart/ShoppingCart;)V

    .line 1942
    :goto_6
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v0, v5}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->setStamp(Lcom/yopeso/lieferando/model/Stamp;)V

    .line 1943
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v0, v4}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->setStempleUsed(Z)V

    .line 1944
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v0, v4}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->setRebateUsed(Z)V

    .line 1945
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getSelectedPayment()Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->setPaymentType(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;)V

    .line 1946
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->displayPaymentDetails()V

    goto/16 :goto_1

    .line 1940
    :cond_17
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mStempleView:Lcom/yopeso/lieferando/view/StempleView;

    sget v1, Lcom/yopeso/lieferando/R$string;->preorder_rebate_forbidden:I

    invoke-virtual {p0, v1}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v0, v1, v3, v2}, Lcom/yopeso/lieferando/view/StempleView;->disableStample(Ljava/lang/String;ZLcom/yopeso/lieferando/model/cart/ShoppingCart;)V

    goto :goto_6
.end method

.method private displayVoucher()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1756
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getSelectedPayment()Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;->paypal:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    if-eq v1, v2, :cond_0

    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getSelectedPayment()Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;->ebanking:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    if-eq v1, v2, :cond_0

    .line 1757
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getSelectedPayment()Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;->credit:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    if-eq v1, v2, :cond_0

    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getSelectedPayment()Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;->payu:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    if-ne v1, v2, :cond_5

    .line 1759
    :cond_0
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getSelectedPayment()Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->setPaymentType(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;)V

    .line 1766
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->isDeliverNow()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/LieferandoApplication;->sCurrentDate:Ljava/util/Date;

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOpen(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1768
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mVoucherView:Lcom/yopeso/lieferando/view/VoucherView;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/view/VoucherView;->enableVoucherText()V

    .line 1769
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getVoucher()Lcom/yopeso/lieferando/model/user/Voucher;

    move-result-object v0

    .line 1773
    .local v0, "voucher":Lcom/yopeso/lieferando/model/user/Voucher;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/user/Voucher;->canBeApplied(Lcom/yopeso/lieferando/model/cart/ShoppingCart;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1774
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v1, v5}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->setVoucher(Lcom/yopeso/lieferando/model/user/Voucher;)V

    .line 1776
    :cond_1
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getVoucher()Lcom/yopeso/lieferando/model/user/Voucher;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1777
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v1, v7}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->setVoucherUsed(Z)V

    .line 1778
    iput-boolean v7, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->isVoucherViewSet:Z

    .line 1779
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mVoucherView:Lcom/yopeso/lieferando/view/VoucherView;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/Voucher;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/view/VoucherView;->setVoucherText(Ljava/lang/String;)V

    .line 1780
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mVoucherView:Lcom/yopeso/lieferando/view/VoucherView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v3

    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getCostWithoutVoucher()I

    move-result v4

    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getShippingCost()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0, v4}, Lcom/yopeso/lieferando/model/user/Voucher;->getVoucherValue(I)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v7}, Lcom/yopeso/lieferando/view/VoucherView;->setTextForResult(Ljava/lang/String;Z)V

    .line 1781
    iput-boolean v6, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->isVoucherViewSet:Z

    .line 1789
    .end local v0    # "voucher":Lcom/yopeso/lieferando/model/user/Voucher;
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->displayPaymentDetails()V

    .line 1805
    :goto_1
    return-void

    .line 1782
    .restart local v0    # "voucher":Lcom/yopeso/lieferando/model/user/Voucher;
    :cond_3
    iget-boolean v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->isVoucherInvalid:Z

    if-eqz v1, :cond_2

    .line 1783
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mVoucherView:Lcom/yopeso/lieferando/view/VoucherView;

    const-string v2, ""

    invoke-virtual {v1, v2, v6}, Lcom/yopeso/lieferando/view/VoucherView;->setTextForResult(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1787
    .end local v0    # "voucher":Lcom/yopeso/lieferando/model/user/Voucher;
    :cond_4
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mVoucherView:Lcom/yopeso/lieferando/view/VoucherView;

    sget v2, Lcom/yopeso/lieferando/R$string;->preorder_voucher_forbidden:I

    invoke-virtual {p0, v2}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/view/VoucherView;->disableVoucherText(Ljava/lang/String;)V

    goto :goto_0

    .line 1791
    :cond_5
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->isVoucherUsed()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getCostWithoutVoucher()I

    move-result v1

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getShippingCost()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getVoucher()Lcom/yopeso/lieferando/model/user/Voucher;

    move-result-object v2

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getCostWithoutVoucher()I

    move-result v3

    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getShippingCost()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/yopeso/lieferando/model/user/Voucher;->getVoucherValue(I)I

    move-result v2

    if-gt v1, v2, :cond_6

    .line 1793
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getSelectedPayment()Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->setPaymentType(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;)V

    .line 1794
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->displayPaymentDetails()V

    goto :goto_1

    .line 1798
    :cond_6
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v1, v6}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->setVoucherUsed(Z)V

    .line 1799
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mVoucherView:Lcom/yopeso/lieferando/view/VoucherView;

    invoke-virtual {v1, v5}, Lcom/yopeso/lieferando/view/VoucherView;->disableVoucherText(Ljava/lang/String;)V

    .line 1800
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getSelectedPayment()Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->setPaymentType(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;)V

    .line 1801
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->displayPaymentDetails()V

    goto :goto_1
.end method

.method private enableDeliverMethod(Z)V
    .locals 4
    .param p1, "deliverNow"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 624
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mDeliverNowToggle:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 625
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mPreorderToggle:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 626
    if-eqz p1, :cond_0

    .line 627
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mDeliverNowToggle:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 628
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mPreorderToggle:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 633
    :goto_0
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mDeliverNowToggle:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 634
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mPreorderToggle:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 635
    return-void

    .line 630
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mPreorderToggle:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 631
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mDeliverNowToggle:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_0
.end method

.method private enableOrderButton(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 244
    if-eqz p1, :cond_0

    .line 245
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mSubmitButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 246
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mSubmitButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/SettingsContent;->getDynamicButtonFilter()Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 247
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->orderButtonEnabled:Z

    .line 253
    :goto_0
    return-void

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mSubmitButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$color;->button_grayed_out:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 251
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->orderButtonEnabled:Z

    goto :goto_0
.end method

.method private getEmailAddress(Lcom/yopeso/lieferando/model/user/Location;)Ljava/lang/String;
    .locals 1
    .param p1, "deliveryAddr"    # Lcom/yopeso/lieferando/model/user/Location;

    .prologue
    .line 1352
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/user/Location;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1353
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

    .line 1354
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/UserData;->getEmail()Ljava/lang/String;

    move-result-object v0

    .line 1362
    :goto_0
    return-object v0

    .line 1357
    :cond_0
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1358
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getEmail()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1362
    :cond_1
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/user/Location;->getEmail()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getName(Lcom/yopeso/lieferando/model/user/Location;)Ljava/lang/String;
    .locals 1
    .param p1, "deliveryAddr"    # Lcom/yopeso/lieferando/model/user/Location;

    .prologue
    .line 1366
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/user/Location;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1367
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getFirstName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1368
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getFirstName()Ljava/lang/String;

    move-result-object v0

    .line 1376
    :goto_0
    return-object v0

    .line 1371
    :cond_0
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/UserData;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1372
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/UserData;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1376
    :cond_1
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/user/Location;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getPreName(Lcom/yopeso/lieferando/model/user/Location;)Ljava/lang/String;
    .locals 1
    .param p1, "deliveryAddr"    # Lcom/yopeso/lieferando/model/user/Location;

    .prologue
    .line 1380
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/user/Location;->getPreName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1381
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getLastName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1382
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getLastName()Ljava/lang/String;

    move-result-object v0

    .line 1390
    :goto_0
    return-object v0

    .line 1385
    :cond_0
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/UserData;->getPreName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1386
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/UserData;->getPreName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1390
    :cond_1
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/user/Location;->getPreName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getSelectedPayment()Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCashRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    sget-object v0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;->bar:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    .line 413
    :goto_0
    return-object v0

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCardRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 396
    sget-object v0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;->credit:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    goto :goto_0

    .line 398
    :cond_1
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mPaypalRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 399
    sget-object v0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;->paypal:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    goto :goto_0

    .line 401
    :cond_2
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mEbanRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 402
    sget-object v0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;->ebanking:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    goto :goto_0

    .line 404
    :cond_3
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mClicknBuyRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 405
    sget-object v0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;->clickandbuy:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    goto :goto_0

    .line 407
    :cond_4
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mPayURadio:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 408
    sget-object v0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;->payu:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    goto :goto_0

    .line 410
    :cond_5
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mECRadio:Landroid/widget/RadioButton;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mECRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 411
    sget-object v0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;->ec:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    goto :goto_0

    .line 413
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private prepareOrder()Lorg/json/JSONObject;
    .locals 8

    .prologue
    .line 1963
    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->toJson()Lorg/json/JSONObject;

    move-result-object v2

    .line 1966
    .local v2, "postOrder":Lorg/json/JSONObject;
    :try_start_0
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getSelectedPayment()Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    move-result-object v4

    sget-object v5, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;->paypal:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    if-eq v4, v5, :cond_0

    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getSelectedPayment()Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    move-result-object v4

    sget-object v5, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;->ebanking:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    if-ne v4, v5, :cond_7

    .line 1967
    :cond_0
    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getCostWithShipping()I

    move-result v4

    if-nez v4, :cond_6

    .line 1968
    const-string v4, "payment"

    sget-object v5, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;->bar:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1980
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v4

    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getSelectedPayment()Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getPaymentFee(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_2

    .line 1982
    const-string v4, "paymentCustomerFee"

    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v5

    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getSelectedPayment()Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    move-result-object v6

    invoke-virtual {v6}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getPaymentFee(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1985
    :cond_2
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->isLoggedIn()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1986
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v3

    .line 1988
    .local v3, "session":Lcom/facebook/Session;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/facebook/Session;->isOpened()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/user/UserData;->hasFacebookLinked()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1989
    const-string v4, "facebookToken"

    invoke-virtual {v3}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1992
    :cond_3
    const-string v4, "agb"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1997
    .end local v3    # "session":Lcom/facebook/Session;
    :goto_1
    const-string v4, "comment"

    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mSpecialDetails:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1998
    const-string v4, "createuser"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1999
    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->isVoucherUsed()Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mVoucherView:Lcom/yopeso/lieferando/view/VoucherView;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/view/VoucherView;->getVoucherText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 2000
    const-string v4, "discount"

    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mVoucherView:Lcom/yopeso/lieferando/view/VoucherView;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/view/VoucherView;->getVoucherText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2001
    const-string v4, "discountType"

    const-string v5, "normal"

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2002
    const-string v4, "discountAmount"

    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getVoucher()Lcom/yopeso/lieferando/model/user/Voucher;

    move-result-object v5

    iget-object v6, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v6}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getCostWithoutVoucher()I

    move-result v6

    iget-object v7, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getShippingCost()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Lcom/yopeso/lieferando/model/user/Voucher;->getVoucherValue(I)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2003
    const-string v4, "expectStp"

    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->shouldCollectStamp()Z

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2004
    invoke-static {}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackRedeemVoucher()V

    .line 2037
    :cond_4
    :goto_2
    const-string v4, "failUrl"

    const-string v5, "http://order-did-fail1984.com"

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2038
    const-string v4, "successUrl"

    const-string v5, "http://order-did-success1984.com"

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2039
    const-string v4, "cancelUrl"

    const-string v5, "http://order-did-cancel984.com"

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2040
    const-string v4, "buid"

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/yopeso/lieferando/util/DeviceUtils;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2041
    const-string v4, "client"

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/yopeso/lieferando/util/DeviceUtils;->getDeviceInfo(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2042
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v4

    invoke-interface {v4}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2044
    const-string v4, "premiumApp"

    sget v5, Lcom/yopeso/lieferando/R$string;->premium_app_post_token:I

    invoke-virtual {p0, v5}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2049
    :cond_5
    :goto_3
    const-string v5, "CheckoutFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v4, "ORDER:"

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    instance-of v4, v2, Lorg/json/JSONObject;

    if-nez v4, :cond_d

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_4
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2050
    return-object v2

    .line 1970
    :cond_6
    :try_start_1
    const-string v4, "payment"

    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getSelectedPayment()Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 2046
    :catch_0
    move-exception v1

    .line 2047
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    .line 1973
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_7
    :try_start_2
    const-string v4, "payment"

    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getSelectedPayment()Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1974
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getSelectedPayment()Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    move-result-object v4

    sget-object v5, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;->ec:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    if-ne v4, v5, :cond_1

    .line 1976
    const-string v4, "paymentCustomerFee"

    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getECPaymentFee()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 1995
    :cond_8
    const-string v4, "agb"

    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getDeliveryAddress()Lcom/yopeso/lieferando/model/user/Location;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/user/Location;->getAgb()Z

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 2005
    :cond_9
    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->isRebateUsed()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 2006
    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/Stamp;->getFirstDiscount()Lcom/yopeso/lieferando/model/Discount;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 2007
    const-string v4, "expectStp"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2008
    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/Stamp;->getFirstDiscount()Lcom/yopeso/lieferando/model/Discount;

    move-result-object v0

    .line 2009
    .local v0, "discount":Lcom/yopeso/lieferando/model/Discount;
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/Discount;->ismNewCustomer()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 2011
    const-string v4, "discountId"

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/Discount;->getId()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2012
    const-string v4, "discountType"

    const-string v5, "partnernc"

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2013
    const-string v4, "discountAmount"

    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRebateDiscount()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2014
    invoke-static {}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackNewCustomerRebate()V

    goto/16 :goto_2

    .line 2018
    :cond_a
    const-string v4, "discountId"

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/Discount;->getId()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2019
    const-string v4, "discountType"

    const-string v5, "partner"

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2020
    const-string v4, "discountAmount"

    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRebateDiscount()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2021
    invoke-static {}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackRebate()V

    goto/16 :goto_2

    .line 2024
    .end local v0    # "discount":Lcom/yopeso/lieferando/model/Discount;
    :cond_b
    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->isStampleUsed()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 2026
    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 2027
    const-string v4, "stpId"

    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/Stamp;->getId()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2028
    const-string v4, "discountType"

    const-string v5, "partnerstp"

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2029
    const-string v4, "discountAmount"

    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/Stamp;->getDiscountValue()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2030
    const-string v4, "expectStp"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2031
    invoke-static {}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackStampRedeem()V

    goto/16 :goto_2

    .line 2034
    :cond_c
    const-string v4, "expectStp"

    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->shouldCollectStamp()Z

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    :cond_d
    move-object v4, v2

    .line 2049
    check-cast v4, Lorg/json/JSONObject;

    invoke-static {v4}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_4
.end method

.method private redeemVoucher()V
    .locals 7

    .prologue
    .line 1210
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mVoucherView:Lcom/yopeso/lieferando/view/VoucherView;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/view/VoucherView;->getVoucherText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mVoucherView:Lcom/yopeso/lieferando/view/VoucherView;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/view/VoucherView;->getVoucherText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1211
    sget v0, Lcom/yopeso/lieferando/R$string;->pleaseWait:I

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->showLoadingIndicator(I)V

    .line 1212
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/net/requests/VoucherRequest;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mVoucherView:Lcom/yopeso/lieferando/view/VoucherView;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/view/VoucherView;->getVoucherText()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v3

    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getDeliveryAddress()Lcom/yopeso/lieferando/model/user/Location;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/user/Location;->getCityId()I

    move-result v4

    new-instance v5, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$VoucherListener;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$VoucherListener;-><init>(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$VoucherListener;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/yopeso/lieferando/net/requests/VoucherRequest;-><init>(Ljava/lang/String;IILcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 1214
    :cond_0
    return-void
.end method

.method private removeStempel()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2314
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->setStempleUsed(Z)V

    .line 2315
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->setRebateUsed(Z)V

    .line 2316
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->setStamp(Lcom/yopeso/lieferando/model/Stamp;)V

    .line 2317
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mStempleView:Lcom/yopeso/lieferando/view/StempleView;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/view/StempleView;->diselectAll()V

    .line 2318
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/events/CartChangedEvent;

    invoke-direct {v1}, Lcom/yopeso/lieferando/events/CartChangedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 2319
    return-void
.end method

.method private setFeeValue()V
    .locals 4

    .prologue
    .line 417
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getSelectedPayment()Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    move-result-object v0

    .line 418
    .local v0, "payment":Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;
    sget-object v1, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;->bar:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    if-ne v0, v1, :cond_1

    .line 419
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v1

    const-string v2, "bar"

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getPaymentFee(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$string;->fee_cash:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->setFeeValue(ILjava/lang/String;)V

    .line 448
    :cond_0
    :goto_0
    return-void

    .line 422
    :cond_1
    sget-object v1, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;->paypal:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    if-ne v0, v1, :cond_2

    .line 423
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v1

    const-string v2, "paypal"

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getPaymentFee(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$string;->fee_paypal:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->setFeeValue(ILjava/lang/String;)V

    goto :goto_0

    .line 426
    :cond_2
    sget-object v1, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;->credit:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    if-ne v0, v1, :cond_3

    .line 427
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v1

    const-string v2, "credit"

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getPaymentFee(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$string;->fee_creditcard:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->setFeeValue(ILjava/lang/String;)V

    goto :goto_0

    .line 430
    :cond_3
    sget-object v1, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;->ebanking:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    if-ne v0, v1, :cond_4

    .line 431
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v1

    const-string v2, "ebanking"

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getPaymentFee(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$string;->fee_sofort:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->setFeeValue(ILjava/lang/String;)V

    goto :goto_0

    .line 434
    :cond_4
    sget-object v1, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;->clickandbuy:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    if-ne v0, v1, :cond_5

    .line 435
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v1

    const-string v2, "clickandbuy"

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getPaymentFee(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$string;->fee_clickandbuy:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->setFeeValue(ILjava/lang/String;)V

    goto :goto_0

    .line 438
    :cond_5
    sget-object v1, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;->ec:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    if-ne v0, v1, :cond_0

    .line 439
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v1

    const-string v2, "ec"

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getPaymentFee(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$string;->ec_payment:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->setFeeValue(ILjava/lang/String;)V

    goto/16 :goto_0
.end method

.method private setFeeValue(ILjava/lang/String;)V
    .locals 9
    .param p1, "fee"    # I
    .param p2, "payment"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 451
    if-eqz p1, :cond_0

    .line 452
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mECLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 453
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mECTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 454
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mECValue:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$string;->price:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v4

    int-to-float v5, p1

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v5, v6

    float-to-double v6, v5

    invoke-virtual {v4, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 459
    :goto_0
    return-void

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mECLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private shouldCollectStamp()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2054
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->isLoggedIn()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Stamp;->hasStampcardCampain()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2055
    :cond_0
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->isLoggedIn()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v2

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/yopeso/lieferando/model/user/UserData;->getStampsForRestaurant(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v2

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/yopeso/lieferando/model/user/UserData;->getRealNotFullStamps(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2057
    :cond_1
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/yopeso/lieferando/net/config/IConfig;->isTakeaway()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2058
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/SettingsContent;->isStampcardActive()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2074
    :cond_2
    :goto_0
    return v0

    .line 2063
    :cond_3
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackStampCollect(I)V

    move v0, v1

    .line 2064
    goto :goto_0

    .line 2070
    :cond_4
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackStampCollect(I)V

    move v0, v1

    .line 2071
    goto :goto_0
.end method

.method private showServerMaintenanceDialog(Ljava/lang/String;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 998
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 999
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    if-eqz p1, :cond_0

    .end local p1    # "message":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$string;->yes:I

    new-instance v3, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$11;

    invoke-direct {v3, p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$11;-><init>(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1004
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1005
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1007
    return-void

    .line 999
    .restart local p1    # "message":Ljava/lang/String;
    :cond_0
    sget v1, Lcom/yopeso/lieferando/R$string;->maintenace:I

    invoke-virtual {p0, v1}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public createJsonWithFieldsValue()Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 2337
    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getDeliveryAddress()Lcom/yopeso/lieferando/model/user/Location;

    move-result-object v0

    .line 2339
    .local v0, "deliveryAddr":Lcom/yopeso/lieferando/model/user/Location;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 2340
    .local v2, "locationObject":Lorg/json/JSONObject;
    const-string v3, "street"

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/Location;->getStreet()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2341
    const-string v3, "number"

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/Location;->getHnr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2342
    const-string v3, "plz"

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/Location;->getPlz()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2343
    const-string v3, "locationName"

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/Location;->getCityName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2344
    const-string v3, "cityId"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/Location;->getCityId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2345
    const-string v3, "tel"

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/Location;->getPhone()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2346
    const-string v3, "companyName"

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/Location;->getCompany()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2347
    const-string v3, "level"

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/Location;->getEtage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2348
    const-string v3, "comment"

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/Location;->getComment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2349
    const-string v3, "customerPrename"

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/Location;->getPreName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2350
    const-string v3, "customerName"

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/Location;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2357
    .end local v2    # "locationObject":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 2354
    :catch_0
    move-exception v1

    .line 2355
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 2357
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getListenerOrder()Lcom/yopeso/lieferando/net/requests/base/VolleyListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yopeso/lieferando/net/requests/base/VolleyListener",
            "<",
            "Lcom/yopeso/lieferando/model/restaurant/Restaurant;",
            ">;"
        }
    .end annotation

    .prologue
    .line 932
    new-instance v0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$9;

    invoke-direct {v0, p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$9;-><init>(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;)V

    return-object v0
.end method

.method public getListenerPreorder()Lcom/yopeso/lieferando/net/requests/base/VolleyListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yopeso/lieferando/net/requests/base/VolleyListener",
            "<",
            "Lcom/yopeso/lieferando/model/restaurant/Restaurant;",
            ">;"
        }
    .end annotation

    .prologue
    .line 963
    new-instance v0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$10;

    invoke-direct {v0, p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$10;-><init>(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;)V

    return-object v0
.end method

.method protected getTitle()I
    .locals 1

    .prologue
    .line 463
    sget v0, Lcom/yopeso/lieferando/R$string;->checkout:I

    return v0
.end method

.method protected goToEditAddressFragment(Z)V
    .locals 2
    .param p1, "useGps"    # Z

    .prologue
    .line 1202
    sget v0, Lcom/yopeso/lieferando/R$id;->Content:I

    invoke-static {p1}, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->newInstance(Z)Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->addNewFragment(ILandroid/support/v4/app/Fragment;)V

    .line 1203
    return-void
.end method

.method protected goToEditDeliveryTime()V
    .locals 2

    .prologue
    .line 638
    sget v0, Lcom/yopeso/lieferando/R$id;->Content:I

    new-instance v1, Lcom/yopeso/lieferando/fragments/checkout/DeliveryTimeFragment;

    invoke-direct {v1}, Lcom/yopeso/lieferando/fragments/checkout/DeliveryTimeFragment;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->addNewFragment(ILandroid/support/v4/app/Fragment;)V

    .line 639
    return-void
.end method

.method protected goToShopingCart()V
    .locals 1

    .prologue
    .line 1206
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 1207
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 1344
    invoke-super {p0, p1}, Lcom/yopeso/lieferando/custom/LRFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 1345
    if-eqz p1, :cond_0

    .line 1346
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mAddressPhone:Landroid/widget/TextView;

    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1347
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->savedInstances:Landroid/os/Bundle;

    .line 1349
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 1226
    invoke-super {p0, p1, p2, p3}, Lcom/yopeso/lieferando/custom/LRFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 1227
    packed-switch p1, :pswitch_data_0

    .line 1261
    :goto_0
    return-void

    .line 1229
    :pswitch_0
    const/4 v2, -0x1

    if-ne p2, v2, :cond_2

    .line 1230
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->isVoucherUsed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1231
    invoke-virtual {p0, v4}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->showSuccessAndRetrun(Z)V

    .line 1235
    :goto_1
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->postBackup:Lcom/yopeso/lieferando/model/OrderResponse;

    if-eqz v2, :cond_0

    .line 1237
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->postBackup:Lcom/yopeso/lieferando/model/OrderResponse;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/OrderResponse;->getOrderId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/yopeso/lieferando/util/IntentNavUtils;->startCheckOrderDeliveryTime(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1256
    :cond_0
    :goto_2
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->postBackup:Lcom/yopeso/lieferando/model/OrderResponse;

    goto :goto_0

    .line 1233
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->showSuccessAndRetrun(Z)V

    goto :goto_1

    .line 1239
    :cond_2
    if-eqz p3, :cond_4

    const-string v2, "error"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v2, "error"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1240
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/SettingsContent;->getErrorCodes()Ljava/util/Map;

    move-result-object v1

    .line 1241
    .local v1, "errors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "error"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1242
    .local v0, "error":Ljava/lang/String;
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1243
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v3, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 1245
    :cond_3
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$string;->can_not_make_payment:I

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 1248
    .end local v0    # "error":Ljava/lang/String;
    .end local v1    # "errors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    if-nez p2, :cond_5

    .line 1249
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$string;->payment_canceled:I

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 1250
    :cond_5
    const/16 v2, 0x63

    if-ne v2, p2, :cond_6

    .line 1251
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$string;->payment_failed:I

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 1252
    :cond_6
    const/16 v2, 0x62

    if-ne v2, p2, :cond_0

    .line 1253
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "PayU failed"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 1227
    :pswitch_data_0
    .packed-switch 0x2717
        :pswitch_0
    .end packed-switch
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 523
    if-eqz p2, :cond_6

    .line 524
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    sget v1, Lcom/yopeso/lieferando/R$id;->DeliverNow:I

    if-ne v0, v1, :cond_2

    .line 525
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v0, v2}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->setDeliverNow(Z)V

    .line 526
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getVoucher()Lcom/yopeso/lieferando/model/user/Voucher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v0, v2}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->setVoucherUsed(Z)V

    .line 530
    :cond_0
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->displayVoucher()V

    .line 531
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->displayStample()V

    .line 532
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->displayDeliveryTime()V

    .line 533
    invoke-direct {p0, v2}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->enableDeliverMethod(Z)V

    .line 600
    :cond_1
    :goto_0
    return-void

    .line 534
    :cond_2
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    sget v1, Lcom/yopeso/lieferando/R$id;->DeliverPreorder:I

    if-ne v0, v1, :cond_1

    .line 537
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->isVoucherUsed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 538
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/yopeso/lieferando/R$string;->preorder_removes_voucher:I

    invoke-virtual {p0, v1}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$string;->ok_button_text:I

    new-instance v2, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$3;

    invoke-direct {v2, p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$3;-><init>(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 547
    sget v1, Lcom/yopeso/lieferando/R$string;->cancel_button_text:I

    new-instance v2, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$4;

    invoke-direct {v2, p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$4;-><init>(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 552
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 553
    :cond_3
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->isStampleUsed()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 554
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/yopeso/lieferando/R$string;->stempel_preordering_not_posible:I

    invoke-virtual {p0, v1}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 555
    sget v1, Lcom/yopeso/lieferando/R$string;->ok_button_text:I

    new-instance v2, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$5;

    invoke-direct {v2, p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$5;-><init>(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 562
    sget v1, Lcom/yopeso/lieferando/R$string;->cancel_button_text:I

    new-instance v2, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$6;

    invoke-direct {v2, p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$6;-><init>(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 567
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 568
    :cond_4
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->isRebateUsed()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 569
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/yopeso/lieferando/R$string;->rebate_preordering_not_posible:I

    invoke-virtual {p0, v1}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 570
    sget v1, Lcom/yopeso/lieferando/R$string;->ok_button_text:I

    new-instance v2, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$7;

    invoke-direct {v2, p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$7;-><init>(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 577
    sget v1, Lcom/yopeso/lieferando/R$string;->cancel_button_text:I

    new-instance v2, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$8;

    invoke-direct {v2, p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$8;-><init>(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 582
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 585
    :cond_5
    invoke-direct {p0, v3}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->enableDeliverMethod(Z)V

    .line 586
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v0, v3}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->setVoucherUsed(Z)V

    .line 587
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mVoucherView:Lcom/yopeso/lieferando/view/VoucherView;

    const-string v1, "only with delivernow"

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/VoucherView;->disableVoucherText(Ljava/lang/String;)V

    .line 588
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->goToEditDeliveryTime()V

    goto/16 :goto_0

    .line 593
    :cond_6
    invoke-virtual {p1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 596
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    sget v1, Lcom/yopeso/lieferando/R$id;->DeliverPreorder:I

    if-ne v0, v1, :cond_1

    .line 597
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->goToEditDeliveryTime()V

    goto/16 :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1012
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 1013
    .local v2, "id":I
    sget v7, Lcom/yopeso/lieferando/R$id;->DeliverAddressLayout:I

    if-ne v2, v7, :cond_1

    .line 1014
    invoke-virtual {p0, v9}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->goToEditAddressFragment(Z)V

    .line 1192
    :cond_0
    :goto_0
    return-void

    .line 1015
    :cond_1
    sget v7, Lcom/yopeso/lieferando/R$id;->LocateAddress:I

    if-ne v2, v7, :cond_2

    .line 1016
    invoke-virtual {p0, v8}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->goToEditAddressFragment(Z)V

    goto :goto_0

    .line 1017
    :cond_2
    sget v7, Lcom/yopeso/lieferando/R$id;->CardPaymentIcons:I

    if-ne v2, v7, :cond_3

    .line 1018
    iget-object v7, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCardRadio:Landroid/widget/RadioButton;

    invoke-virtual {v7, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 1019
    :cond_3
    sget v7, Lcom/yopeso/lieferando/R$id;->SubmitOrder:I

    if-ne v2, v7, :cond_b

    .line 1020
    iget-boolean v7, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->orderButtonEnabled:Z

    if-nez v7, :cond_5

    .line 1022
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getSelectedPayment()Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    move-result-object v7

    if-nez v7, :cond_4

    .line 1024
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1025
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    sget v7, Lcom/yopeso/lieferando/R$string;->ok_button_text:I

    new-instance v8, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$12;

    invoke-direct {v8, p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$12;-><init>(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1030
    sget v7, Lcom/yopeso/lieferando/R$string;->select_payment:I

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1031
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 1035
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1036
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    sget v7, Lcom/yopeso/lieferando/R$string;->ok_button_text:I

    new-instance v8, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$13;

    invoke-direct {v8, p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$13;-><init>(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1041
    sget v7, Lcom/yopeso/lieferando/R$string;->add_address_mandatory_field_text:I

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1042
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 1046
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_5
    invoke-static {}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->deleySelection()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->checkValidData()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1048
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v7

    iget-object v8, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v8}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v8

    invoke-virtual {v8}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v8

    iget-object v9, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v9}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v9

    invoke-virtual {v9}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getHasSms()Z

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/yopeso/lieferando/LieferandoApplication;->isPrinterOn(IZ)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1051
    iget-object v7, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->isDeliverNow()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1052
    iget-object v7, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    sget-object v8, Lcom/yopeso/lieferando/LieferandoApplication;->sCurrentDate:Ljava/util/Date;

    iget-object v9, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v9}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v9

    sget-object v10, Lcom/yopeso/lieferando/LieferandoApplication;->sCurrentDate:Ljava/util/Date;

    invoke-virtual {v9, v10}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isHoliday(Ljava/util/Date;)Z

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getUnavalibleDishes(Ljava/util/Date;Z)Ljava/util/ArrayList;

    move-result-object v6

    .line 1057
    .local v6, "unavalibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/cart/CartItem;>;"
    :goto_1
    if-eqz v6, :cond_7

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-eqz v7, :cond_7

    .line 1059
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    new-instance v8, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$14;

    invoke-direct {v8, p0, v6}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$14;-><init>(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;Ljava/util/ArrayList;)V

    .line 1072
    new-instance v9, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$15;

    invoke-direct {v9, p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$15;-><init>(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;)V

    .line 1059
    invoke-static {v6, v7, v8, v9}, Lcom/yopeso/lieferando/dialogs/UnavalibleMealDialog;->getDialog(Ljava/util/ArrayList;Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v5

    .line 1081
    .local v5, "unavalibleDialog":Landroid/app/AlertDialog;
    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 1054
    .end local v5    # "unavalibleDialog":Landroid/app/AlertDialog;
    .end local v6    # "unavalibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/cart/CartItem;>;"
    :cond_6
    iget-object v7, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    iget-object v8, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v8}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getDeliveryTime()Ljava/util/Date;

    move-result-object v8

    iget-object v9, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v9}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v9

    iget-object v10, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v10}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getDeliveryTime()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isHoliday(Ljava/util/Date;)Z

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getUnavalibleDishes(Ljava/util/Date;Z)Ljava/util/ArrayList;

    move-result-object v6

    .restart local v6    # "unavalibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/cart/CartItem;>;"
    goto :goto_1

    .line 1084
    :cond_7
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getSelectedPayment()Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 1086
    invoke-static {}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->deleySelection()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1087
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sput-wide v8, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mLastClickTime:J

    .line 1088
    sget v7, Lcom/yopeso/lieferando/R$string;->pleaseWait:I

    invoke-virtual {p0, v7}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->showOrderLoadingIndicator(I)V

    .line 1090
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->isLoggedIn()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1091
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v7

    new-instance v8, Lcom/yopeso/lieferando/net/requests/OrderPostRequest;

    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->prepareOrder()Lorg/json/JSONObject;

    move-result-object v9

    new-instance v10, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$OrderPostListener;

    invoke-direct {v10, p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$OrderPostListener;-><init>(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;)V

    invoke-direct {v8, v9, v10}, Lcom/yopeso/lieferando/net/requests/OrderPostRequest;-><init>(Lorg/json/JSONObject;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v8}, Lcom/yopeso/lieferando/net/requests/OrderPostRequest;->withAuth()Lcom/yopeso/lieferando/net/requests/base/JsonRequest;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    goto/16 :goto_0

    .line 1093
    :cond_8
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v7

    new-instance v8, Lcom/yopeso/lieferando/net/requests/OrderPostRequest;

    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->prepareOrder()Lorg/json/JSONObject;

    move-result-object v9

    new-instance v10, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$OrderPostListener;

    invoke-direct {v10, p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$OrderPostListener;-><init>(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;)V

    invoke-direct {v8, v9, v10}, Lcom/yopeso/lieferando/net/requests/OrderPostRequest;-><init>(Lorg/json/JSONObject;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v7, v8}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    goto/16 :goto_0

    .line 1097
    :cond_9
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1098
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    sget v7, Lcom/yopeso/lieferando/R$string;->ok_button_text:I

    new-instance v8, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$16;

    invoke-direct {v8, p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$16;-><init>(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1103
    sget v7, Lcom/yopeso/lieferando/R$string;->select_payment:I

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1104
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 1108
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v6    # "unavalibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/cart/CartItem;>;"
    :cond_a
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    sget v8, Lcom/yopeso/lieferando/R$string;->printer_offline_msg:I

    invoke-static {v7, v8}, Lcom/yopeso/lieferando/dialogs/SingleOptionInfoDialog;->getDialog(Landroid/content/Context;I)Landroid/app/AlertDialog;

    move-result-object v3

    .line 1109
    .local v3, "offline":Landroid/app/AlertDialog;
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 1114
    .end local v3    # "offline":Landroid/app/AlertDialog;
    :cond_b
    sget v7, Lcom/yopeso/lieferando/R$id;->CheckVoucherButton:I

    if-ne v2, v7, :cond_e

    .line 1115
    iget-object v7, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->isStampleUsed()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 1116
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v8, Lcom/yopeso/lieferando/R$string;->stempel_used_redeem_voucher:I

    invoke-virtual {p0, v8}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    sget v8, Lcom/yopeso/lieferando/R$string;->ok_button_text:I

    new-instance v9, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$17;

    invoke-direct {v9, p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$17;-><init>(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 1122
    sget v8, Lcom/yopeso/lieferando/R$string;->cancel_button_text:I

    new-instance v9, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$18;

    invoke-direct {v9, p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$18;-><init>(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 1127
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 1129
    :cond_c
    iget-object v7, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->isRebateUsed()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 1130
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v8, Lcom/yopeso/lieferando/R$string;->rebate_used_redeem_voucher:I

    invoke-virtual {p0, v8}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    sget v8, Lcom/yopeso/lieferando/R$string;->ok_button_text:I

    new-instance v9, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$19;

    invoke-direct {v9, p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$19;-><init>(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 1136
    sget v8, Lcom/yopeso/lieferando/R$string;->cancel_button_text:I

    new-instance v9, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$20;

    invoke-direct {v9, p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$20;-><init>(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 1141
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 1144
    :cond_d
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->redeemVoucher()V

    goto/16 :goto_0

    .line 1148
    :cond_e
    sget v7, Lcom/yopeso/lieferando/R$id;->StandardAddressButton:I

    if-ne v2, v7, :cond_12

    .line 1149
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/user/UserData;->getPrimaryLocation()Lcom/yopeso/lieferando/model/user/Location;

    move-result-object v4

    .line 1150
    .local v4, "primaryLocation":Lcom/yopeso/lieferando/model/user/Location;
    if-eqz v4, :cond_0

    .line 1153
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v1

    .line 1167
    .local v1, "cart":Lcom/yopeso/lieferando/model/cart/ShoppingCart;
    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getDeliveryAddress()Lcom/yopeso/lieferando/model/user/Location;

    move-result-object v7

    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/user/Location;->getCityId()I

    move-result v7

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/user/Location;->getCityId()I

    move-result v8

    if-ne v7, v8, :cond_11

    .line 1168
    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/user/Location;->clone()Lcom/yopeso/lieferando/model/user/Location;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->setDeliveryAddress(Lcom/yopeso/lieferando/model/user/Location;)V

    .line 1169
    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/user/Location;->getPhone()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_f

    .line 1171
    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getDeliveryAddress()Lcom/yopeso/lieferando/model/user/Location;

    move-result-object v7

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/user/Location;->getPhone()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/yopeso/lieferando/model/user/Location;->setPhone(Ljava/lang/String;)V

    .line 1181
    :goto_2
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->displayDeliveryAddress()V

    .line 1182
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->checkValidData()Z

    goto/16 :goto_0

    .line 1174
    :cond_f
    iget-object v7, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->savedInstances:Landroid/os/Bundle;

    if-eqz v7, :cond_10

    iget-object v7, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->savedInstances:Landroid/os/Bundle;

    const-string v8, "phone"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_10

    .line 1175
    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getDeliveryAddress()Lcom/yopeso/lieferando/model/user/Location;

    move-result-object v7

    iget-object v8, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->savedInstances:Landroid/os/Bundle;

    const-string v9, "phone"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/yopeso/lieferando/model/user/Location;->setPhone(Ljava/lang/String;)V

    goto :goto_2

    .line 1178
    :cond_10
    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getDeliveryAddress()Lcom/yopeso/lieferando/model/user/Location;

    move-result-object v7

    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/yopeso/lieferando/model/user/UserData;->getTelephone()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/yopeso/lieferando/model/user/Location;->setPhone(Ljava/lang/String;)V

    goto :goto_2

    .line 1184
    :cond_11
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    sget v8, Lcom/yopeso/lieferando/R$string;->defaultAddressNotAvailable:I

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1187
    .end local v1    # "cart":Lcom/yopeso/lieferando/model/cart/ShoppingCart;
    .end local v4    # "primaryLocation":Lcom/yopeso/lieferando/model/user/Location;
    :cond_12
    sget v7, Lcom/yopeso/lieferando/R$id;->clearButton:I

    if-ne v2, v7, :cond_0

    .line 1189
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->clearVoucher()V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 500
    invoke-super {p0, p1}, Lcom/yopeso/lieferando/custom/LRFragment;->onCreate(Landroid/os/Bundle;)V

    .line 502
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v1

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    .line 503
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getDeliveryAddress()Lcom/yopeso/lieferando/model/user/Location;

    move-result-object v1

    if-nez v1, :cond_0

    .line 504
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    new-instance v2, Lcom/yopeso/lieferando/model/user/Location;

    invoke-direct {v2}, Lcom/yopeso/lieferando/model/user/Location;-><init>()V

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->setDeliveryAddress(Lcom/yopeso/lieferando/model/user/Location;)V

    .line 507
    :cond_0
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->isLoggedIn()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 508
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getDeliveryAddress()Lcom/yopeso/lieferando/model/user/Location;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/Location;->getStreet()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getDeliveryAddress()Lcom/yopeso/lieferando/model/user/Location;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/Location;->getStreet()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 509
    :cond_1
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getDeliveryAddress()Lcom/yopeso/lieferando/model/user/Location;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/Location;->getPlz()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yopeso/lieferando/util/UserStore;->getCahedAddress(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    .line 510
    .local v0, "addr":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_2

    .line 512
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getDeliveryAddress()Lcom/yopeso/lieferando/model/user/Location;

    move-result-object v2

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/yopeso/lieferando/model/user/Location;->setStreet(Ljava/lang/String;)V

    .line 513
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getDeliveryAddress()Lcom/yopeso/lieferando/model/user/Location;

    move-result-object v2

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/yopeso/lieferando/model/user/Location;->setHnr(Ljava/lang/String;)V

    .line 517
    .end local v0    # "addr":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackCheckout(Landroid/content/Context;)V

    .line 518
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 519
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v6, 0x8

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 261
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v4, 0x20

    invoke-virtual {v2, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 262
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/yopeso/lieferando/util/VoucherStore;->getInstance(Landroid/content/Context;)Lcom/yopeso/lieferando/util/VoucherStore;

    move-result-object v2

    iput-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->vouchersStore:Lcom/yopeso/lieferando/util/VoucherStore;

    .line 263
    sget v2, Lcom/yopeso/lieferando/R$layout;->checkout_fragment:I

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 264
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1, v3}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 265
    sget v2, Lcom/yopeso/lieferando/R$id;->SubmitOrder:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mSubmitButton:Landroid/widget/Button;

    .line 266
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v2

    if-nez v2, :cond_0

    .line 267
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mSubmitButton:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/SettingsContent;->getDynamicButtonFilter()Landroid/graphics/PorterDuffColorFilter;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 270
    :cond_0
    sget v2, Lcom/yopeso/lieferando/R$id;->StandardAddressButton:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mStandardAddressBtn:Landroid/widget/Button;

    .line 271
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mStandardAddressBtn:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    sget v2, Lcom/yopeso/lieferando/R$id;->LocateAddress:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v2

    if-nez v2, :cond_1

    .line 277
    sget v2, Lcom/yopeso/lieferando/R$id;->PriceLayout:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/SettingsContent;->getmButtonColor()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 280
    :cond_1
    sget v2, Lcom/yopeso/lieferando/R$id;->AddressName:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mAddressName:Landroid/widget/TextView;

    .line 281
    sget v2, Lcom/yopeso/lieferando/R$id;->AddressPostalCode:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mAddressPostalCode:Landroid/widget/TextView;

    .line 282
    sget v2, Lcom/yopeso/lieferando/R$id;->AddressPhone:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mAddressPhone:Landroid/widget/TextView;

    .line 283
    sget v2, Lcom/yopeso/lieferando/R$id;->AddressEmail:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mAddressEmail:Landroid/widget/TextView;

    .line 284
    sget v2, Lcom/yopeso/lieferando/R$id;->AddressStreet:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mAddressStreet:Landroid/widget/TextView;

    .line 285
    sget v2, Lcom/yopeso/lieferando/R$id;->AddressIncomplete:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mIncompleteAdrError:Landroid/widget/TextView;

    .line 287
    sget v2, Lcom/yopeso/lieferando/R$id;->VoucherView:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/yopeso/lieferando/view/VoucherView;

    iput-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mVoucherView:Lcom/yopeso/lieferando/view/VoucherView;

    .line 288
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mVoucherView:Lcom/yopeso/lieferando/view/VoucherView;

    invoke-virtual {v2, p0}, Lcom/yopeso/lieferando/view/VoucherView;->setListener(Lcom/yopeso/lieferando/callback/VoucherListCallback;)V

    .line 290
    sget v2, Lcom/yopeso/lieferando/R$id;->StempleView:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/yopeso/lieferando/view/StempleView;

    iput-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mStempleView:Lcom/yopeso/lieferando/view/StempleView;

    .line 291
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mStempleView:Lcom/yopeso/lieferando/view/StempleView;

    invoke-virtual {v2, p0}, Lcom/yopeso/lieferando/view/StempleView;->setListener(Lcom/yopeso/lieferando/callback/StempelSelectedCallback;)V

    .line 293
    sget v2, Lcom/yopeso/lieferando/R$id;->CheckVoucherButton:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    sget v2, Lcom/yopeso/lieferando/R$id;->clearButton:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    sget v2, Lcom/yopeso/lieferando/R$id;->DeliverAddressLayout:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mAddressLayout:Landroid/widget/LinearLayout;

    .line 297
    sget v2, Lcom/yopeso/lieferando/R$id;->CashRadio:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCashRadio:Landroid/widget/RadioButton;

    .line 298
    sget v2, Lcom/yopeso/lieferando/R$id;->CardRadio:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCardRadio:Landroid/widget/RadioButton;

    .line 299
    sget v2, Lcom/yopeso/lieferando/R$id;->PaypalRadio:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mPaypalRadio:Landroid/widget/RadioButton;

    .line 300
    sget v2, Lcom/yopeso/lieferando/R$id;->EbankingRadio:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mEbanRadio:Landroid/widget/RadioButton;

    .line 301
    sget v2, Lcom/yopeso/lieferando/R$id;->ClickAndBuyRadio:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mClicknBuyRadio:Landroid/widget/RadioButton;

    .line 302
    sget v2, Lcom/yopeso/lieferando/R$id;->PayURadio:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mPayURadio:Landroid/widget/RadioButton;

    .line 304
    sget v2, Lcom/yopeso/lieferando/R$id;->CashRadioFee:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCashRadioFee:Landroid/widget/TextView;

    .line 305
    sget v2, Lcom/yopeso/lieferando/R$id;->CardRadioFee:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCardRadioFee:Landroid/widget/TextView;

    .line 306
    sget v2, Lcom/yopeso/lieferando/R$id;->PaypalRadioFee:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mPaypalRadioFee:Landroid/widget/TextView;

    .line 307
    sget v2, Lcom/yopeso/lieferando/R$id;->EbankingRadioFee:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mEbanRadioFee:Landroid/widget/TextView;

    .line 308
    sget v2, Lcom/yopeso/lieferando/R$id;->ClickAndBuyRadioFee:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mClicknBuyRadioFee:Landroid/widget/TextView;

    .line 309
    sget v2, Lcom/yopeso/lieferando/R$id;->PayURadioFee:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mPayURadioFee:Landroid/widget/TextView;

    .line 310
    sget v2, Lcom/yopeso/lieferando/R$id;->ECPaymentRadioFee:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mECRadioFee:Landroid/widget/TextView;

    .line 312
    sget v2, Lcom/yopeso/lieferando/R$id;->CashRadioLL:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCashRadioLL:Landroid/widget/LinearLayout;

    .line 314
    sget v2, Lcom/yopeso/lieferando/R$id;->PaypalRadioLL:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mPaypalRadioLL:Landroid/widget/LinearLayout;

    .line 315
    sget v2, Lcom/yopeso/lieferando/R$id;->EbankingRadioLL:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mEbanRadioLL:Landroid/widget/LinearLayout;

    .line 316
    sget v2, Lcom/yopeso/lieferando/R$id;->ClickAndBuyRadioLL:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mClicknBuyRadioLL:Landroid/widget/LinearLayout;

    .line 317
    sget v2, Lcom/yopeso/lieferando/R$id;->PayURadioLL:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mPayURadioLL:Landroid/widget/LinearLayout;

    .line 318
    sget v2, Lcom/yopeso/lieferando/R$id;->ECPaymentRadioLL:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mECRadioLL:Landroid/widget/LinearLayout;

    .line 320
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 321
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mPayURadio:Landroid/widget/RadioButton;

    invoke-virtual {v2, v5}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 322
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mPayURadioLL:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 325
    :cond_2
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v2

    if-nez v2, :cond_3

    .line 326
    sget v2, Lcom/yopeso/lieferando/R$id;->ECPaymentRadio:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mECRadio:Landroid/widget/RadioButton;

    .line 327
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mECRadio:Landroid/widget/RadioButton;

    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mPaymentChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 328
    sget v2, Lcom/yopeso/lieferando/R$id;->ECValueLayout:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mECLayout:Landroid/widget/LinearLayout;

    .line 330
    :cond_3
    sget v2, Lcom/yopeso/lieferando/R$id;->ECValue:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mECValue:Landroid/widget/TextView;

    .line 331
    sget v2, Lcom/yopeso/lieferando/R$id;->ECTitle:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mECTitle:Landroid/widget/TextView;

    .line 333
    sget v2, Lcom/yopeso/lieferando/R$id;->CardPaymentIcons:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCardsLayout:Landroid/widget/LinearLayout;

    .line 334
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCardsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 336
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCardRadio:Landroid/widget/RadioButton;

    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mPaymentChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 337
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCashRadio:Landroid/widget/RadioButton;

    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mPaymentChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 338
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mPaypalRadio:Landroid/widget/RadioButton;

    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mPaymentChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 339
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mEbanRadio:Landroid/widget/RadioButton;

    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mPaymentChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 340
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mClicknBuyRadio:Landroid/widget/RadioButton;

    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mPaymentChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 341
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mPayURadio:Landroid/widget/RadioButton;

    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mPaymentChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 343
    sget v2, Lcom/yopeso/lieferando/R$id;->DeliverNow:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ToggleButton;

    iput-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mDeliverNowToggle:Landroid/widget/ToggleButton;

    .line 344
    sget v2, Lcom/yopeso/lieferando/R$id;->DeliverPreorder:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ToggleButton;

    iput-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mPreorderToggle:Landroid/widget/ToggleButton;

    .line 345
    sget v2, Lcom/yopeso/lieferando/R$id;->DeliverDetails:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mDeliverDetails:Landroid/widget/TextView;

    .line 346
    sget v2, Lcom/yopeso/lieferando/R$id;->SpecialInstructions:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mSpecialDetails:Landroid/widget/EditText;

    .line 348
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v4

    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/yopeso/lieferando/net/config/IConfig;->isTakeaway()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/SettingsContent;->isStampcardActive()Z

    move-result v2

    :goto_0
    invoke-virtual {v4, v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->hasValidStampsOrDiscounts(Z)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->isLoggedIn()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v2

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/yopeso/lieferando/model/user/UserData;->getStampsForRestaurant(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 349
    :cond_4
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mStempleView:Lcom/yopeso/lieferando/view/StempleView;

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v3

    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v2, v3, v4}, Lcom/yopeso/lieferando/view/StempleView;->setUserStampCards(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Lcom/yopeso/lieferando/model/cart/ShoppingCart;)V

    .line 357
    :goto_1
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mAddressLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 358
    sget v2, Lcom/yopeso/lieferando/R$id;->SubmitOrder:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 359
    return-object v1

    :cond_5
    move v2, v3

    .line 348
    goto :goto_0

    .line 351
    :cond_6
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 352
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/yopeso/lieferando/util/DensityUtils;->convertDpToPixel(ILandroid/content/Context;)I

    move-result v2

    const/16 v3, 0x42

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/yopeso/lieferando/util/DensityUtils;->convertDpToPixel(ILandroid/content/Context;)I

    move-result v3

    invoke-virtual {v0, v5, v2, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 353
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mVoucherView:Lcom/yopeso/lieferando/view/VoucherView;

    invoke-virtual {v2, v0}, Lcom/yopeso/lieferando/view/VoucherView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 354
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mStempleView:Lcom/yopeso/lieferando/view/StempleView;

    invoke-virtual {v2, v6}, Lcom/yopeso/lieferando/view/StempleView;->setVisibility(I)V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 833
    invoke-super {p0}, Lcom/yopeso/lieferando/custom/LRFragment;->onDestroy()V

    .line 834
    return-void
.end method

.method public onEvent(Lcom/yopeso/lieferando/events/AuthenticationEvent;)V
    .locals 7
    .param p1, "event"    # Lcom/yopeso/lieferando/events/AuthenticationEvent;

    .prologue
    const/4 v6, -0x1

    const/4 v3, -0x2

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 364
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->isLoggedIn()Z

    move-result v1

    if-nez v1, :cond_1

    .line 365
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->removeStamp()V

    .line 366
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getDeliveryAddress()Lcom/yopeso/lieferando/model/user/Location;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/yopeso/lieferando/model/user/Location;->setAgb(Z)V

    .line 371
    :goto_0
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->isLoggedIn()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v1

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/user/UserData;->getStampsForRestaurant(I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 372
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v6, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 373
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/yopeso/lieferando/util/DensityUtils;->convertDpToPixel(ILandroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v4, v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 374
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mVoucherView:Lcom/yopeso/lieferando/view/VoucherView;

    invoke-virtual {v1, v0}, Lcom/yopeso/lieferando/view/VoucherView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 375
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mStempleView:Lcom/yopeso/lieferando/view/StempleView;

    invoke-virtual {v1, v4}, Lcom/yopeso/lieferando/view/StempleView;->setVisibility(I)V

    .line 376
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mStempleView:Lcom/yopeso/lieferando/view/StempleView;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/view/StempleView;->clearStampsView()V

    .line 377
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mStempleView:Lcom/yopeso/lieferando/view/StempleView;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v2

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v1, v2, v3}, Lcom/yopeso/lieferando/view/StempleView;->setUserStampCards(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Lcom/yopeso/lieferando/model/cart/ShoppingCart;)V

    .line 384
    :goto_1
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->displayStample()V

    .line 385
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->displayVoucher()V

    .line 386
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->displayPaymentDetails()V

    .line 387
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->displayDeliveryAddress()V

    .line 388
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->checkValidData()Z

    .line 389
    return-void

    .line 368
    .end local v0    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getDeliveryAddress()Lcom/yopeso/lieferando/model/user/Location;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/user/Location;->setAgb(Z)V

    .line 369
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mIncompleteAdrError:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 379
    :cond_2
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v6, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 380
    .restart local v0    # "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/yopeso/lieferando/util/DensityUtils;->convertDpToPixel(ILandroid/content/Context;)I

    move-result v1

    const/16 v2, 0x42

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/yopeso/lieferando/util/DensityUtils;->convertDpToPixel(ILandroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v4, v1, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 381
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mVoucherView:Lcom/yopeso/lieferando/view/VoucherView;

    invoke-virtual {v1, v0}, Lcom/yopeso/lieferando/view/VoucherView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 382
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mStempleView:Lcom/yopeso/lieferando/view/StempleView;

    invoke-virtual {v1, v5}, Lcom/yopeso/lieferando/view/StempleView;->setVisibility(I)V

    goto :goto_1
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 817
    invoke-super {p0}, Lcom/yopeso/lieferando/custom/LRFragment;->onPause()V

    .line 818
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mVoucherView:Lcom/yopeso/lieferando/view/VoucherView;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/view/VoucherView;->closeDialog()V

    .line 820
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getDeliveryAddress()Lcom/yopeso/lieferando/model/user/Location;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 821
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/LieferandoApplication;->getCart()Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getDeliveryAddress()Lcom/yopeso/lieferando/model/user/Location;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mSpecialDetails:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/user/Location;->setComment(Ljava/lang/String;)V

    .line 824
    :cond_0
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 825
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 827
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 655
    invoke-super {p0}, Lcom/yopeso/lieferando/custom/LRFragment;->onResume()V

    .line 656
    invoke-virtual {p0, v8}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->showHideLogoActionbar(Z)V

    .line 657
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 658
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 661
    sget-boolean v1, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->saveNewAddress:Z

    if-eqz v1, :cond_0

    .line 662
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 664
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v1

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getDeliveryAddress()Lcom/yopeso/lieferando/model/user/Location;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/Location;->getCityId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/LieferandoApplication;->getLocationURL(I)Ljava/lang/String;

    move-result-object v0

    .line 665
    .local v0, "loc_url":Ljava/lang/String;
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getDeliveryAddress()Lcom/yopeso/lieferando/model/user/Location;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yopeso/lieferando/model/user/Location;->setLocationUrl(Ljava/lang/String;)V

    .line 666
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v1

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getDeliveryAddress()Lcom/yopeso/lieferando/model/user/Location;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/Location;->clone()Lcom/yopeso/lieferando/model/user/Location;

    move-result-object v2

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/yopeso/lieferando/model/user/UserData;->addLocation(Lcom/yopeso/lieferando/model/user/Location;Landroid/content/Context;)V

    .line 667
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->save()V

    .line 672
    .end local v0    # "loc_url":Ljava/lang/String;
    :goto_0
    sput-boolean v8, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->saveNewAddress:Z

    .line 675
    :cond_0
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getOrderCostReached()I

    move-result v1

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getMinCost()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 679
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$string;->minimum_order_not_reached:I

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v4

    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getMinCost()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v5, v6

    float-to-double v6, v5

    invoke-virtual {v4, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {p0, v2, v3}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 680
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "RestaurantDetailsFrag"

    invoke-virtual {v1, v2, v8}, Landroid/support/v4/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 774
    :goto_1
    return-void

    .line 670
    :cond_1
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    new-instance v2, Lcom/yopeso/lieferando/net/requests/CreateAddressRequest;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->createJsonWithFieldsValue()Lorg/json/JSONObject;

    move-result-object v3

    new-instance v4, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$CreateAddressListener;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$CreateAddressListener;-><init>(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$CreateAddressListener;)V

    invoke-direct {v2, v3, v4}, Lcom/yopeso/lieferando/net/requests/CreateAddressRequest;-><init>(Lorg/json/JSONObject;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v2}, Lcom/yopeso/lieferando/net/requests/CreateAddressRequest;->withAuth()Lcom/yopeso/lieferando/net/requests/base/JsonRequest;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    goto :goto_0

    .line 683
    :cond_2
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mDeliverNowToggle:Landroid/widget/ToggleButton;

    invoke-virtual {v1, p0}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 684
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mPreorderToggle:Landroid/widget/ToggleButton;

    invoke-virtual {v1, p0}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 685
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getPaymentType()Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 686
    invoke-static {}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->$SWITCH_TABLE$com$yopeso$lieferando$fragments$checkout$CheckoutFragment$Payment()[I

    move-result-object v1

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getPaymentType()Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$Payment;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 761
    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->displayVoucher()V

    .line 762
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->displayStample()V

    .line 763
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->displayDeliveryAddress()V

    .line 764
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->displayDeliveryTime()V

    .line 765
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->displayPaymentDetails()V

    .line 766
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->checkValidData()Z

    .line 768
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    invoke-virtual {v1, p0}, Lde/greenrobot/event/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 769
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    invoke-virtual {v1, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 772
    :cond_4
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$id;->VoucherCodeEditText:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mVoucherTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_1

    .line 688
    :pswitch_0
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCashRadio:Landroid/widget/RadioButton;

    invoke-virtual {v1, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 689
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCardRadio:Landroid/widget/RadioButton;

    invoke-virtual {v1, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 690
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mPaypalRadio:Landroid/widget/RadioButton;

    invoke-virtual {v1, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 691
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mEbanRadio:Landroid/widget/RadioButton;

    invoke-virtual {v1, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 692
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mClicknBuyRadio:Landroid/widget/RadioButton;

    invoke-virtual {v1, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 693
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mPayURadio:Landroid/widget/RadioButton;

    invoke-virtual {v1, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 694
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mECRadio:Landroid/widget/RadioButton;

    if-eqz v1, :cond_3

    .line 695
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mECRadio:Landroid/widget/RadioButton;

    invoke-virtual {v1, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_2

    .line 698
    :pswitch_1
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCashRadio:Landroid/widget/RadioButton;

    invoke-virtual {v1, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 699
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCardRadio:Landroid/widget/RadioButton;

    invoke-virtual {v1, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 700
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mPaypalRadio:Landroid/widget/RadioButton;

    invoke-virtual {v1, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 701
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mEbanRadio:Landroid/widget/RadioButton;

    invoke-virtual {v1, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 702
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mClicknBuyRadio:Landroid/widget/RadioButton;

    invoke-virtual {v1, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 703
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mPayURadio:Landroid/widget/RadioButton;

    invoke-virtual {v1, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 704
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mECRadio:Landroid/widget/RadioButton;

    if-eqz v1, :cond_3

    .line 705
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mECRadio:Landroid/widget/RadioButton;

    invoke-virtual {v1, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_2

    .line 708
    :pswitch_2
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCashRadio:Landroid/widget/RadioButton;

    invoke-virtual {v1, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 709
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCardRadio:Landroid/widget/RadioButton;

    invoke-virtual {v1, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 710
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mPaypalRadio:Landroid/widget/RadioButton;

    invoke-virtual {v1, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 711
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mEbanRadio:Landroid/widget/RadioButton;

    invoke-virtual {v1, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 712
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mClicknBuyRadio:Landroid/widget/RadioButton;

    invoke-virtual {v1, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 713
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mPayURadio:Landroid/widget/RadioButton;

    invoke-virtual {v1, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 714
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mECRadio:Landroid/widget/RadioButton;

    if-eqz v1, :cond_3

    .line 715
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mECRadio:Landroid/widget/RadioButton;

    invoke-virtual {v1, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_2

    .line 718
    :pswitch_3
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCashRadio:Landroid/widget/RadioButton;

    invoke-virtual {v1, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 719
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCardRadio:Landroid/widget/RadioButton;

    invoke-virtual {v1, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 720
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mPaypalRadio:Landroid/widget/RadioButton;

    invoke-virtual {v1, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 721
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mEbanRadio:Landroid/widget/RadioButton;

    invoke-virtual {v1, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 722
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mClicknBuyRadio:Landroid/widget/RadioButton;

    invoke-virtual {v1, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 723
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mPayURadio:Landroid/widget/RadioButton;

    invoke-virtual {v1, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 724
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mECRadio:Landroid/widget/RadioButton;

    if-eqz v1, :cond_3

    .line 725
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mECRadio:Landroid/widget/RadioButton;

    invoke-virtual {v1, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_2

    .line 728
    :pswitch_4
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCashRadio:Landroid/widget/RadioButton;

    invoke-virtual {v1, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 729
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCardRadio:Landroid/widget/RadioButton;

    invoke-virtual {v1, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 730
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mPaypalRadio:Landroid/widget/RadioButton;

    invoke-virtual {v1, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 731
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mEbanRadio:Landroid/widget/RadioButton;

    invoke-virtual {v1, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 732
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mClicknBuyRadio:Landroid/widget/RadioButton;

    invoke-virtual {v1, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 733
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mPayURadio:Landroid/widget/RadioButton;

    invoke-virtual {v1, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 734
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mECRadio:Landroid/widget/RadioButton;

    if-eqz v1, :cond_3

    .line 735
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mECRadio:Landroid/widget/RadioButton;

    invoke-virtual {v1, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_2

    .line 738
    :pswitch_5
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCashRadio:Landroid/widget/RadioButton;

    invoke-virtual {v1, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 739
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCardRadio:Landroid/widget/RadioButton;

    invoke-virtual {v1, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 740
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mPaypalRadio:Landroid/widget/RadioButton;

    invoke-virtual {v1, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 741
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mEbanRadio:Landroid/widget/RadioButton;

    invoke-virtual {v1, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 742
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mClicknBuyRadio:Landroid/widget/RadioButton;

    invoke-virtual {v1, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 743
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mPayURadio:Landroid/widget/RadioButton;

    invoke-virtual {v1, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 744
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mECRadio:Landroid/widget/RadioButton;

    if-eqz v1, :cond_3

    .line 745
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mECRadio:Landroid/widget/RadioButton;

    invoke-virtual {v1, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_2

    .line 748
    :pswitch_6
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mECRadio:Landroid/widget/RadioButton;

    invoke-virtual {v1, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 749
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCashRadio:Landroid/widget/RadioButton;

    invoke-virtual {v1, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 750
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCardRadio:Landroid/widget/RadioButton;

    invoke-virtual {v1, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 751
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mPaypalRadio:Landroid/widget/RadioButton;

    invoke-virtual {v1, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 752
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mEbanRadio:Landroid/widget/RadioButton;

    invoke-virtual {v1, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 753
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mClicknBuyRadio:Landroid/widget/RadioButton;

    invoke-virtual {v1, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 754
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mPayURadio:Landroid/widget/RadioButton;

    invoke-virtual {v1, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_2

    .line 686
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1337
    invoke-super {p0, p1}, Lcom/yopeso/lieferando/custom/LRFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1338
    const-string v0, "phone"

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mAddressPhone:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1339
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->savedInstances:Landroid/os/Bundle;

    .line 1340
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 468
    invoke-super {p0}, Lcom/yopeso/lieferando/custom/LRFragment;->onStart()V

    .line 469
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/net/requests/SettingsRequest;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$SettingsListener;

    invoke-direct {v3, p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$SettingsListener;-><init>(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;)V

    invoke-direct {v1, v2, v3}, Lcom/yopeso/lieferando/net/requests/SettingsRequest;-><init>(Landroid/content/Context;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 471
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackFBCheckout(Landroid/content/Context;)V

    .line 476
    return-void
.end method

.method public onStempelSelected(Lcom/yopeso/lieferando/model/Stamp;Z)V
    .locals 3
    .param p1, "stamp"    # Lcom/yopeso/lieferando/model/Stamp;
    .param p2, "isSelected"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2257
    if-eqz p2, :cond_3

    .line 2258
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->isVoucherUsed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2259
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/Stamp;->isDiscount()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2260
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/yopeso/lieferando/R$string;->rebate_voucher_used:I

    invoke-virtual {p0, v1}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$string;->ok_button_text:I

    new-instance v2, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$22;

    invoke-direct {v2, p0, p1}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$22;-><init>(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;Lcom/yopeso/lieferando/model/Stamp;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2269
    sget v1, Lcom/yopeso/lieferando/R$string;->cancel_button_text:I

    new-instance v2, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$23;

    invoke-direct {v2, p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$23;-><init>(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2274
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2310
    :goto_0
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->displayPaymentDetails()V

    .line 2311
    return-void

    .line 2277
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/yopeso/lieferando/R$string;->stempel_voucher_used:I

    invoke-virtual {p0, v1}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$string;->ok_button_text:I

    new-instance v2, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$24;

    invoke-direct {v2, p0, p1}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$24;-><init>(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;Lcom/yopeso/lieferando/model/Stamp;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2286
    sget v1, Lcom/yopeso/lieferando/R$string;->cancel_button_text:I

    new-instance v2, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$25;

    invoke-direct {v2, p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$25;-><init>(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2291
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 2295
    :cond_1
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/Stamp;->isDiscount()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2296
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->setStempleUsed(Z)V

    .line 2297
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v0, v2}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->setRebateUsed(Z)V

    .line 2303
    :goto_1
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v0, p1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->setStamp(Lcom/yopeso/lieferando/model/Stamp;)V

    .line 2304
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mStempleView:Lcom/yopeso/lieferando/view/StempleView;

    invoke-virtual {v0, p1}, Lcom/yopeso/lieferando/view/StempleView;->diselectOthers(Lcom/yopeso/lieferando/model/Stamp;)V

    .line 2305
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/events/CartChangedEvent;

    invoke-direct {v1}, Lcom/yopeso/lieferando/events/CartChangedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 2300
    :cond_2
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->setRebateUsed(Z)V

    .line 2301
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v0, v2}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->setStempleUsed(Z)V

    goto :goto_1

    .line 2308
    :cond_3
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->removeStempel()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 642
    invoke-super {p0}, Lcom/yopeso/lieferando/custom/LRFragment;->onStop()V

    .line 643
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->showHideLogoActionbar(Z)V

    .line 644
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v0

    if-nez v0, :cond_0

    .line 645
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 651
    :goto_0
    return-void

    .line 648
    :cond_0
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$string;->app_title:I

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(I)V

    goto :goto_0
.end method

.method public onVoucherSelected(Lcom/yopeso/lieferando/model/user/BonusVoucher;)V
    .locals 7
    .param p1, "voucher"    # Lcom/yopeso/lieferando/model/user/BonusVoucher;

    .prologue
    .line 2247
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/user/BonusVoucher;->getCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2248
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->VoucherCodeEditText:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/user/BonusVoucher;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2249
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mVoucherView:Lcom/yopeso/lieferando/view/VoucherView;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/view/VoucherView;->getVoucherText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mVoucherView:Lcom/yopeso/lieferando/view/VoucherView;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/view/VoucherView;->getVoucherText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 2250
    sget v0, Lcom/yopeso/lieferando/R$string;->pleaseWait:I

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->showLoadingIndicator(I)V

    .line 2251
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/net/requests/VoucherRequest;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mVoucherView:Lcom/yopeso/lieferando/view/VoucherView;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/view/VoucherView;->getVoucherText()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v3

    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getDeliveryAddress()Lcom/yopeso/lieferando/model/user/Location;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/user/Location;->getCityId()I

    move-result v4

    new-instance v5, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$VoucherListener;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$VoucherListener;-><init>(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$VoucherListener;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/yopeso/lieferando/net/requests/VoucherRequest;-><init>(Ljava/lang/String;IILcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 2253
    :cond_1
    return-void
.end method

.method public removeStamp()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 837
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->setStamp(Lcom/yopeso/lieferando/model/Stamp;)V

    .line 838
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v0, v2}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->setStempleUsed(Z)V

    .line 839
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v0, v2}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->setRebateUsed(Z)V

    .line 840
    return-void
.end method

.method protected removeVoucherIfUsed()V
    .locals 2

    .prologue
    .line 2170
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mVoucherView:Lcom/yopeso/lieferando/view/VoucherView;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/view/VoucherView;->getVoucherText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 2171
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->vouchersStore:Lcom/yopeso/lieferando/util/VoucherStore;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mVoucherView:Lcom/yopeso/lieferando/view/VoucherView;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/view/VoucherView;->getVoucherText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/util/VoucherStore;->removeVoucher(Ljava/lang/String;)V

    .line 2173
    :cond_0
    return-void
.end method

.method protected showSuccessAndRetrun(Z)V
    .locals 4
    .param p1, "fidelity"    # Z

    .prologue
    .line 2142
    const-string v1, "CheckoutFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "showSuccessAndRetrun:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2143
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->removeVoucherIfUsed()V

    .line 2146
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->isLoggedIn()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->isStampleUsed()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->isRebateUsed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2147
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/Stamp;->hasStampcardCampain()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2148
    :cond_0
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v1

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/user/UserData;->getStampsForRestaurant(I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v1

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mCart:Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/user/UserData;->getRealNotFullStamps(I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2146
    :cond_1
    const/4 v0, 0x1

    .line 2151
    .local v0, "shouldCollect":Z
    :goto_0
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$21;

    invoke-direct {v2, p0, p1, v0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$21;-><init>(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;ZZ)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2163
    return-void

    .line 2146
    .end local v0    # "shouldCollect":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
