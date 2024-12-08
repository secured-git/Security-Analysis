.class public Lcom/yopeso/lieferando/view/AddressInputLinearLayout;
.super Landroid/widget/LinearLayout;
.source "AddressInputLinearLayout.java"

# interfaces
.implements Lcom/yopeso/lieferando/callback/LocationSuggestionCallback;


# instance fields
.field protected mActivityContext:Landroid/app/Activity;

.field private mCity:Landroid/widget/EditText;

.field protected mCityId:I

.field protected mCompany:Landroid/widget/EditText;

.field protected mContext:Landroid/content/Context;

.field protected mDefaultCheckbox:Landroid/widget/CheckBox;

.field protected mEmail:Landroid/widget/EditText;

.field protected mFloor:Landroid/widget/EditText;

.field private mHouseNr:Landroid/widget/EditText;

.field protected mItemIsSelected:Lcom/yopeso/lieferando/model/LocationSuggestion;

.field protected mLastName:Landroid/widget/EditText;

.field mListener:Lcom/yopeso/lieferando/callback/AddressInputLayoutCallBack;

.field protected mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

.field protected mLocationSelectedIndex:I

.field protected mLocationSuggestions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yopeso/lieferando/model/LocationSuggestion;",
            ">;"
        }
    .end annotation
.end field

.field protected mName:Landroid/widget/EditText;

.field protected mPhoneNumber:Landroid/widget/EditText;

.field protected mRegexp:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/yopeso/lieferando/model/user/Regexp;",
            ">;"
        }
    .end annotation
.end field

.field protected mRequestQueue:Lcom/android/volley/RequestQueue;

.field protected mSearchSuggestionsAdapter:Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;

.field protected mSetLocation:Z

.field protected mSpecialNotes:Landroid/widget/EditText;

.field private mStreet:Landroid/widget/EditText;

.field private mStreetTextWatcher:Landroid/text/TextWatcher;

.field protected mTextWatcher:Landroid/text/TextWatcher;

.field protected mUserData:Lcom/yopeso/lieferando/model/user/UserData;

.field private mZipCode:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 109
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 77
    iput-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLocationSelectedIndex:I

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mSetLocation:Z

    .line 99
    iput-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mItemIsSelected:Lcom/yopeso/lieferando/model/LocationSuggestion;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLocationSuggestions:Ljava/util/List;

    .line 323
    new-instance v0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout$1;

    invoke-direct {v0, p0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout$1;-><init>(Lcom/yopeso/lieferando/view/AddressInputLinearLayout;)V

    iput-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mTextWatcher:Landroid/text/TextWatcher;

    .line 349
    new-instance v0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout$2;

    invoke-direct {v0, p0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout$2;-><init>(Lcom/yopeso/lieferando/view/AddressInputLinearLayout;)V

    iput-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mStreetTextWatcher:Landroid/text/TextWatcher;

    .line 110
    iput-object p1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mContext:Landroid/content/Context;

    .line 111
    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->setup()V

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 122
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    iput-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLocationSelectedIndex:I

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mSetLocation:Z

    .line 99
    iput-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mItemIsSelected:Lcom/yopeso/lieferando/model/LocationSuggestion;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLocationSuggestions:Ljava/util/List;

    .line 323
    new-instance v0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout$1;

    invoke-direct {v0, p0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout$1;-><init>(Lcom/yopeso/lieferando/view/AddressInputLinearLayout;)V

    iput-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mTextWatcher:Landroid/text/TextWatcher;

    .line 349
    new-instance v0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout$2;

    invoke-direct {v0, p0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout$2;-><init>(Lcom/yopeso/lieferando/view/AddressInputLinearLayout;)V

    iput-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mStreetTextWatcher:Landroid/text/TextWatcher;

    .line 123
    iput-object p1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mContext:Landroid/content/Context;

    .line 124
    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->setup()V

    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 116
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    iput-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLocationSelectedIndex:I

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mSetLocation:Z

    .line 99
    iput-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mItemIsSelected:Lcom/yopeso/lieferando/model/LocationSuggestion;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLocationSuggestions:Ljava/util/List;

    .line 323
    new-instance v0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout$1;

    invoke-direct {v0, p0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout$1;-><init>(Lcom/yopeso/lieferando/view/AddressInputLinearLayout;)V

    iput-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mTextWatcher:Landroid/text/TextWatcher;

    .line 349
    new-instance v0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout$2;

    invoke-direct {v0, p0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout$2;-><init>(Lcom/yopeso/lieferando/view/AddressInputLinearLayout;)V

    iput-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mStreetTextWatcher:Landroid/text/TextWatcher;

    .line 117
    iput-object p1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mContext:Landroid/content/Context;

    .line 118
    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->setup()V

    .line 119
    return-void
.end method

.method static synthetic access$0(Lcom/yopeso/lieferando/view/AddressInputLinearLayout;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mStreet:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1(Lcom/yopeso/lieferando/view/AddressInputLinearLayout;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mCity:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2(Lcom/yopeso/lieferando/view/AddressInputLinearLayout;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 307
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->performRequest(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3(Lcom/yopeso/lieferando/view/AddressInputLinearLayout;)Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mZipCode:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    return-object v0
.end method

.method private performRequest(Ljava/lang/String;)V
    .locals 1
    .param p1, "plz"    # Ljava/lang/String;

    .prologue
    .line 308
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mActivityContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/LieferandoApplication;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/LieferandoApplication;->getmAreas()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->showLocationSuggestions(Ljava/util/ArrayList;)V

    .line 317
    :goto_0
    return-void

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mListener:Lcom/yopeso/lieferando/callback/AddressInputLayoutCallBack;

    invoke-interface {v0, p1}, Lcom/yopeso/lieferando/callback/AddressInputLayoutCallBack;->performSuggestionRequest(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected checkMandatoryFiedls()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 384
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mStreet:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mStreet:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mHouseNr:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 388
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mHouseNr:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 390
    :cond_1
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mZipCode:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 391
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 392
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mSearchSuggestionsAdapter:Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;->isListEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mCity:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 393
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mZipCode:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v0, v2}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    .line 400
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mCity:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 401
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mCity:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 408
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 409
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mName:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 411
    :cond_4
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLastName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 412
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLastName:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 414
    :cond_5
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 415
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 417
    :cond_6
    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->validate()Z

    .line 418
    return-void

    .line 397
    :cond_7
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mZipCode:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v0, v2}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 404
    :cond_8
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 405
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mZipCode:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v0, v2}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public clearAllFields()V
    .locals 2

    .prologue
    .line 467
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mSetLocation:Z

    .line 468
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mName:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/UserData;->getPreName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 469
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLastName:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/UserData;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 470
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mPhoneNumber:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/UserData;->getTelephone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 471
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mStreet:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 472
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mHouseNr:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 473
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mZipCode:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 474
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mCity:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 475
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mCompany:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 476
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mFloor:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 477
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mSpecialNotes:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 478
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mSetLocation:Z

    .line 479
    return-void
.end method

.method public createJsonWithFieldsValue(Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/yopeso/lieferando/model/user/Regexp;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .local p1, "regexp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/yopeso/lieferando/model/user/Regexp;>;"
    const/16 v8, 0x19

    const/4 v7, 0x2

    const/4 v4, 0x0

    .line 561
    const/4 v2, 0x1

    .line 563
    .local v2, "returnObject":Z
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 565
    .local v1, "locationObject":Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 566
    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mName:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mContext:Landroid/content/Context;

    sget v6, Lcom/yopeso/lieferando/R$string;->mandatory_field_error_message:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 567
    const/4 v2, 0x0

    .line 584
    :goto_0
    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLastName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 585
    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLastName:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mContext:Landroid/content/Context;

    sget v6, Lcom/yopeso/lieferando/R$string;->mandatory_field_error_message:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 586
    const/4 v2, 0x0

    .line 603
    :goto_1
    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mStreet:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 604
    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mStreet:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mContext:Landroid/content/Context;

    sget v6, Lcom/yopeso/lieferando/R$string;->add_address_mandatory_field_text:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 605
    const/4 v2, 0x0

    .line 620
    :goto_2
    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mHouseNr:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 621
    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mHouseNr:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mContext:Landroid/content/Context;

    sget v6, Lcom/yopeso/lieferando/R$string;->add_address_mandatory_field_text:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 622
    const/4 v2, 0x0

    .line 638
    :goto_3
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v3

    invoke-interface {v3}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 639
    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mZipCode:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mZipCode:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x6

    if-ne v3, v5, :cond_12

    .line 640
    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mZipCode:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    .line 641
    const-string v3, "plz"

    iget-object v5, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mZipCode:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 663
    :goto_4
    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mCity:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 664
    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mZipCode:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    iget-object v5, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mContext:Landroid/content/Context;

    sget v6, Lcom/yopeso/lieferando/R$string;->select_postcode_error:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    .line 665
    const/4 v2, 0x0

    .line 675
    :goto_5
    const-string v3, "cityId"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mCityId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 677
    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v3, ""

    iget-object v5, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 678
    :cond_0
    const-string v3, "tel"

    iget-object v5, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/user/UserData;->getTelephone()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 696
    :goto_6
    const-string v3, "tel"

    iget-object v5, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 697
    const-string v3, "companyName"

    iget-object v5, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mCompany:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 698
    const-string v3, "level"

    iget-object v5, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mFloor:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 699
    const-string v3, "comment"

    iget-object v5, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mSpecialNotes:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 700
    const-string v3, "primary"

    iget-object v5, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mDefaultCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 701
    const-string v3, "customerPrename"

    iget-object v5, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mName:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 702
    const-string v3, "customerName"

    iget-object v5, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLastName:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 703
    if-eqz v2, :cond_6

    .line 709
    .end local v1    # "locationObject":Lorg/json/JSONObject;
    :goto_7
    return-object v1

    .line 568
    .restart local v1    # "locationObject":Lorg/json/JSONObject;
    :cond_1
    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v7, :cond_2

    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v8, :cond_3

    .line 569
    :cond_2
    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mName:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mContext:Landroid/content/Context;

    sget v6, Lcom/yopeso/lieferando/R$string;->mandatory_field_limits_error_message:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 570
    const/4 v2, 0x0

    .line 571
    goto/16 :goto_0

    :cond_3
    const-string v3, "name"

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v3, "name"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yopeso/lieferando/model/user/Regexp;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/user/Regexp;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 572
    iget-object v5, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mName:Landroid/widget/EditText;

    const-string v3, "name"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yopeso/lieferando/model/user/Regexp;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/user/Regexp;->getMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 573
    const/4 v2, 0x0

    .line 574
    goto/16 :goto_0

    .line 575
    :cond_4
    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "^[^{}]*$"

    invoke-virtual {v3, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 576
    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mName:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/yopeso/lieferando/R$string;->enter_only_valid_chars:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 577
    const/4 v2, 0x0

    .line 578
    goto/16 :goto_0

    .line 580
    :cond_5
    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mName:Landroid/widget/EditText;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 706
    .end local v1    # "locationObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 707
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .end local v0    # "e":Lorg/json/JSONException;
    :cond_6
    move-object v1, v4

    .line 709
    goto/16 :goto_7

    .line 587
    .restart local v1    # "locationObject":Lorg/json/JSONObject;
    :cond_7
    :try_start_1
    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLastName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v7, :cond_8

    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLastName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v8, :cond_9

    .line 588
    :cond_8
    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLastName:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mContext:Landroid/content/Context;

    sget v6, Lcom/yopeso/lieferando/R$string;->mandatory_field_limits_error_message:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 589
    const/4 v2, 0x0

    .line 590
    goto/16 :goto_1

    :cond_9
    const-string v3, "lastname"

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLastName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v3, "lastname"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yopeso/lieferando/model/user/Regexp;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/user/Regexp;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 591
    iget-object v5, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLastName:Landroid/widget/EditText;

    const-string v3, "lastname"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yopeso/lieferando/model/user/Regexp;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/user/Regexp;->getMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 592
    const/4 v2, 0x0

    .line 593
    goto/16 :goto_1

    .line 594
    :cond_a
    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLastName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "^[^{}]*$"

    invoke-virtual {v3, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 595
    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLastName:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/yopeso/lieferando/R$string;->enter_only_valid_chars:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 596
    const/4 v2, 0x0

    .line 597
    goto/16 :goto_1

    .line 599
    :cond_b
    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLastName:Landroid/widget/EditText;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 606
    :cond_c
    const-string v3, "street"

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mStreet:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v3, "street"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yopeso/lieferando/model/user/Regexp;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/user/Regexp;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 607
    iget-object v5, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mStreet:Landroid/widget/EditText;

    const-string v3, "street"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yopeso/lieferando/model/user/Regexp;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/user/Regexp;->getMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 608
    const/4 v2, 0x0

    .line 609
    goto/16 :goto_2

    .line 610
    :cond_d
    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mStreet:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "^[^{}]*$"

    invoke-virtual {v3, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 611
    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mStreet:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/yopeso/lieferando/R$string;->enter_only_valid_chars:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 612
    const/4 v2, 0x0

    .line 613
    goto/16 :goto_2

    .line 615
    :cond_e
    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mStreet:Landroid/widget/EditText;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 616
    const-string v3, "street"

    iget-object v5, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mStreet:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_2

    .line 623
    :cond_f
    const-string v3, "house"

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mHouseNr:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v3, "house"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yopeso/lieferando/model/user/Regexp;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/user/Regexp;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 624
    iget-object v5, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mHouseNr:Landroid/widget/EditText;

    const-string v3, "house"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yopeso/lieferando/model/user/Regexp;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/user/Regexp;->getMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 625
    const/4 v2, 0x0

    .line 626
    goto/16 :goto_3

    .line 627
    :cond_10
    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mHouseNr:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "^[^{}]*$"

    invoke-virtual {v3, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 628
    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mHouseNr:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/yopeso/lieferando/R$string;->enter_only_valid_chars:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 629
    const/4 v2, 0x0

    .line 630
    goto/16 :goto_3

    .line 632
    :cond_11
    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mHouseNr:Landroid/widget/EditText;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 633
    const-string v3, "number"

    iget-object v5, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mHouseNr:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_3

    .line 643
    :cond_12
    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mZipCode:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 644
    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mZipCode:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    iget-object v5, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mContext:Landroid/content/Context;

    sget v6, Lcom/yopeso/lieferando/R$string;->add_address_mandatory_field_text:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    .line 648
    :goto_8
    const/4 v2, 0x0

    .line 650
    goto/16 :goto_4

    .line 646
    :cond_13
    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mZipCode:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    iget-object v5, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mContext:Landroid/content/Context;

    sget v6, Lcom/yopeso/lieferando/R$string;->add_valid_zipcode:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 651
    :cond_14
    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mZipCode:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mZipCode:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x5

    if-ne v3, v5, :cond_15

    .line 652
    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mZipCode:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    .line 653
    const-string v3, "plz"

    iget-object v5, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mZipCode:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_4

    .line 655
    :cond_15
    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mZipCode:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 656
    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mZipCode:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    iget-object v5, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mContext:Landroid/content/Context;

    sget v6, Lcom/yopeso/lieferando/R$string;->add_address_mandatory_field_text:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    .line 660
    :goto_9
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 658
    :cond_16
    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mZipCode:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    iget-object v5, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mContext:Landroid/content/Context;

    sget v6, Lcom/yopeso/lieferando/R$string;->add_valid_zipcode:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 667
    :cond_17
    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mCity:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "^[^{}]*$"

    invoke-virtual {v3, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 668
    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mCity:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/yopeso/lieferando/R$string;->enter_only_valid_chars:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 669
    const/4 v2, 0x0

    .line 670
    goto/16 :goto_5

    .line 672
    :cond_18
    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mCity:Landroid/widget/EditText;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 682
    :cond_19
    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 683
    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mPhoneNumber:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mContext:Landroid/content/Context;

    sget v6, Lcom/yopeso/lieferando/R$string;->add_address_mandatory_field_text:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 684
    const/4 v2, 0x0

    .line 694
    :goto_a
    const-string v3, "tel"

    iget-object v5, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_6

    .line 686
    :cond_1a
    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "^[^{}]*$"

    invoke-virtual {v3, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1b

    .line 687
    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/yopeso/lieferando/R$string;->enter_only_valid_chars:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 688
    const/4 v2, 0x0

    .line 689
    goto :goto_a

    .line 691
    :cond_1b
    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mPhoneNumber:Landroid/widget/EditText;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_a
.end method

.method public createLocationFromFields()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 713
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    if-nez v1, :cond_0

    .line 714
    new-instance v1, Lcom/yopeso/lieferando/model/user/Location;

    invoke-direct {v1}, Lcom/yopeso/lieferando/model/user/Location;-><init>()V

    iput-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    .line 716
    :cond_0
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLastName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/user/Location;->setName(Ljava/lang/String;)V

    .line 717
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/user/Location;->setPreName(Ljava/lang/String;)V

    .line 718
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mStreet:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/user/Location;->setStreet(Ljava/lang/String;)V

    .line 719
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    iget v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mCityId:I

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/user/Location;->setCityId(I)V

    .line 720
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mHouseNr:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/user/Location;->setHnr(Ljava/lang/String;)V

    .line 721
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mZipCode:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/user/Location;->setPlz(Ljava/lang/String;)V

    .line 722
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mCity:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/user/Location;->setCityName(Ljava/lang/String;)V

    .line 723
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mCompany:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/user/Location;->setCompany(Ljava/lang/String;)V

    .line 724
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mFloor:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/user/Location;->setEtage(Ljava/lang/String;)V

    .line 725
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mSpecialNotes:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/user/Location;->setComment(Ljava/lang/String;)V

    .line 726
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/user/Location;->setPhone(Ljava/lang/String;)V

    .line 727
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 728
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mEmail:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/user/Location;->setEmail(Ljava/lang/String;)V

    .line 730
    :cond_1
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mDefaultCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 731
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/user/Location;->setPrimary(Z)V

    .line 734
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/UserData;->getLocations()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 740
    :goto_1
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/yopeso/lieferando/model/user/UserData;->addLocation(Lcom/yopeso/lieferando/model/user/Location;Landroid/content/Context;)V

    .line 741
    return-void

    .line 734
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/user/Location;

    .line 735
    .local v0, "location":Lcom/yopeso/lieferando/model/user/Location;
    invoke-virtual {v0, v3}, Lcom/yopeso/lieferando/model/user/Location;->setPrimary(Z)V

    goto :goto_0

    .line 738
    .end local v0    # "location":Lcom/yopeso/lieferando/model/user/Location;
    :cond_3
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {v1, v3}, Lcom/yopeso/lieferando/model/user/Location;->setPrimary(Z)V

    goto :goto_1
.end method

.method public deleteSelectedLocation()V
    .locals 2

    .prologue
    .line 534
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/user/UserData;->deleteLocation(Lcom/yopeso/lieferando/model/user/Location;)V

    .line 535
    return-void
.end method

.method public getCityId()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mCityId:I

    return v0
.end method

.method public getListener()Lcom/yopeso/lieferando/callback/AddressInputLayoutCallBack;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mListener:Lcom/yopeso/lieferando/callback/AddressInputLayoutCallBack;

    return-object v0
.end method

.method public getLocationSelected()Lcom/yopeso/lieferando/model/user/Location;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    return-object v0
.end method

.method public getLocationSelectedIndex()I
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLocationSelectedIndex:I

    return v0
.end method

.method public getUserData()Lcom/yopeso/lieferando/model/user/UserData;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    return-object v0
.end method

.method public getmLocationSuggestions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yopeso/lieferando/model/LocationSuggestion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 805
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLocationSuggestions:Ljava/util/List;

    return-object v0
.end method

.method public getmSearchSuggestionsAdapter()Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;
    .locals 1

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mSearchSuggestionsAdapter:Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;

    return-object v0
.end method

.method public getmZipCode()Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;
    .locals 1

    .prologue
    .line 1007
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mZipCode:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    return-object v0
.end method

.method public isSetLocation()Z
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mSetLocation:Z

    return v0
.end method

.method public onLocationSelected(Lcom/yopeso/lieferando/model/LocationSuggestion;)V
    .locals 2
    .param p1, "ls"    # Lcom/yopeso/lieferando/model/LocationSuggestion;

    .prologue
    .line 817
    iput-object p1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mItemIsSelected:Lcom/yopeso/lieferando/model/LocationSuggestion;

    .line 818
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mZipCode:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mItemIsSelected:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getPlz()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 819
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mCity:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mItemIsSelected:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 820
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mItemIsSelected:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getCityId()I

    move-result v0

    iput v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mCityId:I

    .line 821
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mZipCode:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->dismissDropDown()V

    .line 822
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mZipCode:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->clearFocus()V

    .line 823
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 824
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mEmail:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 829
    :goto_0
    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->validate()Z

    .line 830
    return-void

    .line 827
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0
.end method

.method public saveLocationFromFields()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 744
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    if-nez v1, :cond_0

    .line 745
    new-instance v1, Lcom/yopeso/lieferando/model/user/Location;

    invoke-direct {v1}, Lcom/yopeso/lieferando/model/user/Location;-><init>()V

    iput-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    .line 747
    :cond_0
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLastName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/user/Location;->setName(Ljava/lang/String;)V

    .line 748
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/user/Location;->setPreName(Ljava/lang/String;)V

    .line 749
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mStreet:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/user/Location;->setStreet(Ljava/lang/String;)V

    .line 750
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    iget v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mCityId:I

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/user/Location;->setCityId(I)V

    .line 751
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mHouseNr:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/user/Location;->setHnr(Ljava/lang/String;)V

    .line 752
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mZipCode:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/user/Location;->setPlz(Ljava/lang/String;)V

    .line 753
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mCity:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/user/Location;->setCityName(Ljava/lang/String;)V

    .line 754
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mCompany:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/user/Location;->setCompany(Ljava/lang/String;)V

    .line 755
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mFloor:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/user/Location;->setEtage(Ljava/lang/String;)V

    .line 756
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mSpecialNotes:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/user/Location;->setComment(Ljava/lang/String;)V

    .line 757
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/user/Location;->setPhone(Ljava/lang/String;)V

    .line 758
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 759
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mEmail:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/user/Location;->setEmail(Ljava/lang/String;)V

    .line 761
    :cond_1
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mDefaultCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 762
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/user/Location;->setPrimary(Z)V

    .line 765
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/UserData;->getLocations()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    .line 772
    :goto_1
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mItemIsSelected:Lcom/yopeso/lieferando/model/LocationSuggestion;

    if-eqz v1, :cond_2

    .line 773
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mItemIsSelected:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getLocationUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/user/Location;->setLocationUrl(Ljava/lang/String;)V

    .line 775
    :cond_2
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/yopeso/lieferando/model/user/UserData;->addLocation(Lcom/yopeso/lieferando/model/user/Location;Landroid/content/Context;)V

    .line 776
    return-void

    .line 765
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/user/Location;

    .line 766
    .local v0, "location":Lcom/yopeso/lieferando/model/user/Location;
    invoke-virtual {v0, v3}, Lcom/yopeso/lieferando/model/user/Location;->setPrimary(Z)V

    goto :goto_0

    .line 769
    .end local v0    # "location":Lcom/yopeso/lieferando/model/user/Location;
    :cond_4
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {v1, v3}, Lcom/yopeso/lieferando/model/user/Location;->setPrimary(Z)V

    goto :goto_1
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mActivityContext:Landroid/app/Activity;

    .line 177
    return-void
.end method

.method public setCityId(I)V
    .locals 0
    .param p1, "cityId"    # I

    .prologue
    .line 156
    iput p1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mCityId:I

    .line 157
    return-void
.end method

.method public setFieldsFromAddress(Landroid/location/Address;)V
    .locals 4
    .param p1, "address"    # Landroid/location/Address;

    .prologue
    .line 538
    if-eqz p1, :cond_2

    .line 539
    invoke-virtual {p1}, Landroid/location/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 540
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mSetLocation:Z

    .line 541
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mZipCode:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {p1}, Landroid/location/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 542
    invoke-virtual {p1}, Landroid/location/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->performRequest(Ljava/lang/String;)V

    .line 544
    :cond_0
    invoke-virtual {p1}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/location/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 545
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mStreet:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 547
    :cond_1
    invoke-static {p1}, Lcom/yopeso/lieferando/util/GeoUtils;->getHouseNumberFromAddress(Landroid/location/Address;)Ljava/lang/String;

    move-result-object v0

    .line 549
    .local v0, "houserNr":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/location/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 550
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mHouseNr:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 553
    .end local v0    # "houserNr":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public setIsSetLocation(Z)V
    .locals 0
    .param p1, "setLocation"    # Z

    .prologue
    .line 148
    iput-boolean p1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mSetLocation:Z

    .line 149
    return-void
.end method

.method public setListener(Lcom/yopeso/lieferando/callback/AddressInputLayoutCallBack;)V
    .locals 0
    .param p1, "listener"    # Lcom/yopeso/lieferando/callback/AddressInputLayoutCallBack;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mListener:Lcom/yopeso/lieferando/callback/AddressInputLayoutCallBack;

    .line 141
    return-void
.end method

.method public setLocationField()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 485
    iput-boolean v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mSetLocation:Z

    .line 487
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/UserData;->getLocations()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLocationSelectedIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/user/Location;

    iput-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    .line 488
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/Location;->getCityId()I

    move-result v0

    iput v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mCityId:I

    .line 490
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mCity:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/Location;->getCityName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 491
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mStreet:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/Location;->getStreet()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 492
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mZipCode:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/Location;->getPlz()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 493
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mHouseNr:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/Location;->getHnr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 495
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/Location;->getPreName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/Location;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 496
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mName:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/UserData;->getPreName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 497
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLastName:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/UserData;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 502
    :goto_0
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 503
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mEmail:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/Location;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 505
    :cond_1
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/Location;->getPhone()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 506
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mPhoneNumber:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/Location;->getPhone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 512
    :goto_1
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/Location;->getCompany()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 513
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mCompany:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/Location;->getCompany()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 517
    :goto_2
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/Location;->getEtage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/Location;->getEtage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 518
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mFloor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/Location;->getEtage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 522
    :goto_3
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/Location;->getComment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 523
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mSpecialNotes:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/Location;->getComment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 527
    :goto_4
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/Location;->isPrimary()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 528
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mDefaultCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 530
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mSetLocation:Z

    .line 531
    return-void

    .line 499
    :cond_3
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mName:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/Location;->getPreName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 500
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLastName:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/Location;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 509
    :cond_4
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mPhoneNumber:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/UserData;->getTelephone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 515
    :cond_5
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mCompany:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 520
    :cond_6
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mFloor:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 525
    :cond_7
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mSpecialNotes:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method

.method public setLocationSelected(Lcom/yopeso/lieferando/model/user/Location;)V
    .locals 0
    .param p1, "locationSelected"    # Lcom/yopeso/lieferando/model/user/Location;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    .line 165
    return-void
.end method

.method public setLocationSelectedIndex(I)V
    .locals 0
    .param p1, "locationSelectedIndex"    # I

    .prologue
    .line 172
    iput p1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLocationSelectedIndex:I

    .line 173
    return-void
.end method

.method public setLocationSuggestions(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/LocationSuggestion;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 810
    .local p1, "mSuggestions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/LocationSuggestion;>;"
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLocationSuggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 811
    if-eqz p1, :cond_0

    .line 812
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLocationSuggestions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 813
    :cond_0
    return-void
.end method

.method protected setNotValidCharsError()V
    .locals 3

    .prologue
    .line 424
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mStreet:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "^[^{}]*$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mStreet:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$string;->enter_only_valid_chars:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mHouseNr:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "^[^{}]*$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 428
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mHouseNr:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$string;->enter_only_valid_chars:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 430
    :cond_1
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mZipCode:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "^[^{}]*$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 431
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mZipCode:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$string;->enter_only_valid_chars:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    .line 433
    :cond_2
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mCity:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "^[^{}]*$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 434
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mCity:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$string;->enter_only_valid_chars:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 436
    :cond_3
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "^[^{}]*$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 437
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mName:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$string;->enter_only_valid_chars:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 439
    :cond_4
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLastName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "^[^{}]*$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 440
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLastName:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$string;->enter_only_valid_chars:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 442
    :cond_5
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "^[^{}]*$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 443
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$string;->enter_only_valid_chars:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 445
    :cond_6
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mCompany:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "^[^{}]*$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 446
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mCompany:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$string;->enter_only_valid_chars:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 448
    :cond_7
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mFloor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "^[^{}]*$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 449
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mFloor:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$string;->enter_only_valid_chars:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 451
    :cond_8
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mSpecialNotes:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "^[^{}]*$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 452
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mSpecialNotes:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$string;->enter_only_valid_chars:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 455
    :cond_9
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 456
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mEmail:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "^[^{}]*$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 457
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mEmail:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$string;->enter_only_valid_chars:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 460
    :cond_a
    return-void
.end method

.method public setRegEx(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/yopeso/lieferando/model/user/Regexp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1003
    .local p1, "regexp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/yopeso/lieferando/model/user/Regexp;>;"
    iput-object p1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mRegexp:Ljava/util/Map;

    .line 1004
    return-void
.end method

.method public setUserData(Lcom/yopeso/lieferando/model/user/UserData;)V
    .locals 0
    .param p1, "userData"    # Lcom/yopeso/lieferando/model/user/UserData;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    .line 133
    return-void
.end method

.method protected setup()V
    .locals 4

    .prologue
    .line 180
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$layout;->address_input_layout:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 181
    sget v0, Lcom/yopeso/lieferando/R$id;->AddressName:I

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mName:Landroid/widget/EditText;

    .line 182
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mName:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 183
    sget v0, Lcom/yopeso/lieferando/R$id;->AddressLastName:I

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLastName:Landroid/widget/EditText;

    .line 184
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLastName:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 185
    sget v0, Lcom/yopeso/lieferando/R$id;->AddressStreet:I

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mStreet:Landroid/widget/EditText;

    .line 186
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mStreet:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mStreetTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 187
    sget v0, Lcom/yopeso/lieferando/R$id;->AddressHauseNr:I

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mHouseNr:Landroid/widget/EditText;

    .line 188
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mHouseNr:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 189
    sget v0, Lcom/yopeso/lieferando/R$id;->AddressZipCode:I

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    iput-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mZipCode:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    .line 190
    sget v0, Lcom/yopeso/lieferando/R$id;->AddressCity:I

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mCity:Landroid/widget/EditText;

    .line 191
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mCity:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 193
    sget v0, Lcom/yopeso/lieferando/R$id;->PhoneNumber:I

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mPhoneNumber:Landroid/widget/EditText;

    .line 194
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mPhoneNumber:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 196
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    sget v0, Lcom/yopeso/lieferando/R$id;->EmailAddr:I

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mEmail:Landroid/widget/EditText;

    .line 198
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mEmail:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 202
    :cond_0
    sget v0, Lcom/yopeso/lieferando/R$id;->AddressCompany:I

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mCompany:Landroid/widget/EditText;

    .line 203
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mCompany:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 204
    sget v0, Lcom/yopeso/lieferando/R$id;->AddressFloor:I

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mFloor:Landroid/widget/EditText;

    .line 205
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mFloor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 206
    sget v0, Lcom/yopeso/lieferando/R$id;->AddressSpecialNotes:I

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mSpecialNotes:Landroid/widget/EditText;

    .line 207
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mSpecialNotes:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 208
    sget v0, Lcom/yopeso/lieferando/R$id;->AddressDefault:I

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mDefaultCheckbox:Landroid/widget/CheckBox;

    .line 210
    new-instance v0, Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mContext:Landroid/content/Context;

    sget v2, Lcom/yopeso/lieferando/R$layout;->auto_complete_item:I

    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLocationSuggestions:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Lcom/yopeso/lieferando/callback/LocationSuggestionCallback;)V

    iput-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mSearchSuggestionsAdapter:Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;

    .line 211
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mSearchSuggestionsAdapter:Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;->setNotifyOnChange(Z)V

    .line 213
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mZipCode:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setThreshold(I)V

    .line 214
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mZipCode:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    new-instance v1, Lcom/yopeso/lieferando/view/AddressInputLinearLayout$3;

    invoke-direct {v1, p0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout$3;-><init>(Lcom/yopeso/lieferando/view/AddressInputLinearLayout;)V

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 269
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mZipCode:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    new-instance v1, Lcom/yopeso/lieferando/view/AddressInputLinearLayout$4;

    invoke-direct {v1, p0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout$4;-><init>(Lcom/yopeso/lieferando/view/AddressInputLinearLayout;)V

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 287
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mZipCode:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    new-instance v1, Lcom/yopeso/lieferando/view/AddressInputLinearLayout$5;

    invoke-direct {v1, p0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout$5;-><init>(Lcom/yopeso/lieferando/view/AddressInputLinearLayout;)V

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 305
    return-void
.end method

.method public showLocationSuggestions(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/LocationSuggestion;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 785
    .local p1, "suggestions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/LocationSuggestion;>;"
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLocationSuggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 786
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLocationSuggestions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 787
    new-instance v0, Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mContext:Landroid/content/Context;

    sget v2, Lcom/yopeso/lieferando/R$layout;->auto_complete_item:I

    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLocationSuggestions:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Lcom/yopeso/lieferando/callback/LocationSuggestionCallback;)V

    iput-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mSearchSuggestionsAdapter:Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;

    .line 788
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mSearchSuggestionsAdapter:Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;->setNotifyOnChange(Z)V

    .line 789
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mZipCode:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mSearchSuggestionsAdapter:Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 790
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mZipCode:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->showDropDown()V

    .line 791
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 792
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mSearchSuggestionsAdapter:Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mZipCode:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 795
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mZipCode:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    .line 796
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mSearchSuggestionsAdapter:Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mZipCode:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 802
    :cond_1
    return-void
.end method

.method public validate()Z
    .locals 9

    .prologue
    const/16 v8, 0x19

    const/4 v7, 0x6

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 833
    const/4 v1, 0x1

    .line 835
    .local v1, "returnObject":Z
    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 836
    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mName:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mContext:Landroid/content/Context;

    sget v4, Lcom/yopeso/lieferando/R$string;->add_address_mandatory_field_text:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 837
    const/4 v1, 0x0

    .line 851
    :goto_0
    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLastName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 852
    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLastName:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mContext:Landroid/content/Context;

    sget v4, Lcom/yopeso/lieferando/R$string;->add_address_mandatory_field_text:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 853
    const/4 v1, 0x0

    .line 868
    :goto_1
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v2

    if-nez v2, :cond_10

    .line 870
    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 871
    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mPhoneNumber:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mContext:Landroid/content/Context;

    sget v4, Lcom/yopeso/lieferando/R$string;->mandatory_field_error_message:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 872
    const/4 v1, 0x0

    .line 898
    :goto_2
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 899
    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/SettingsContent;->getRegexp()Ljava/util/Map;

    move-result-object v0

    .line 900
    .local v0, "regexp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/yopeso/lieferando/model/user/Regexp;>;"
    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mEmail:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 901
    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mEmail:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mContext:Landroid/content/Context;

    sget v4, Lcom/yopeso/lieferando/R$string;->mandatory_field_error_message:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 902
    const/4 v1, 0x0

    .line 917
    .end local v0    # "regexp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/yopeso/lieferando/model/user/Regexp;>;"
    :cond_0
    :goto_3
    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mStreet:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 918
    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mStreet:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mContext:Landroid/content/Context;

    sget v4, Lcom/yopeso/lieferando/R$string;->add_address_mandatory_field_text:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 919
    const/4 v1, 0x0

    .line 933
    :goto_4
    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mHouseNr:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 934
    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mHouseNr:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mContext:Landroid/content/Context;

    sget v4, Lcom/yopeso/lieferando/R$string;->add_address_mandatory_field_text:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 935
    const/4 v1, 0x0

    .line 948
    :goto_5
    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mZipCode:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 949
    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mZipCode:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mContext:Landroid/content/Context;

    sget v4, Lcom/yopeso/lieferando/R$string;->add_address_mandatory_field_text:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    .line 950
    const/4 v1, 0x0

    .line 959
    :goto_6
    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mCity:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 960
    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mCity:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mContext:Landroid/content/Context;

    sget v4, Lcom/yopeso/lieferando/R$string;->add_address_mandatory_field_text:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 961
    const/4 v1, 0x0

    .line 970
    :goto_7
    iget v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mCityId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    iget v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mCityId:I

    if-nez v2, :cond_2

    .line 971
    :cond_1
    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mCity:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/yopeso/lieferando/R$string;->enter_only_valid_chars:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 976
    :cond_2
    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mCompany:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "^[^{}]*$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_23

    .line 977
    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mCompany:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/yopeso/lieferando/R$string;->enter_only_valid_chars:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 978
    const/4 v1, 0x0

    .line 983
    :goto_8
    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mFloor:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "^[^{}]*$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_24

    .line 984
    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mFloor:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/yopeso/lieferando/R$string;->enter_only_valid_chars:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 985
    const/4 v1, 0x0

    .line 991
    :goto_9
    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mSpecialNotes:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "^[^{}]*$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 992
    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mSpecialNotes:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/yopeso/lieferando/R$string;->enter_only_valid_chars:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 993
    const/4 v1, 0x0

    .line 998
    :goto_a
    return v1

    .line 838
    :cond_3
    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v6, :cond_4

    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v8, :cond_5

    .line 839
    :cond_4
    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mName:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mContext:Landroid/content/Context;

    sget v4, Lcom/yopeso/lieferando/R$string;->mandatory_field_limits_error_message:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 840
    const/4 v1, 0x0

    .line 841
    goto/16 :goto_0

    :cond_5
    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mRegexp:Ljava/util/Map;

    const-string v3, "name"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mRegexp:Ljava/util/Map;

    const-string v4, "name"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yopeso/lieferando/model/user/Regexp;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/Regexp;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 842
    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mName:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mRegexp:Ljava/util/Map;

    const-string v4, "name"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yopeso/lieferando/model/user/Regexp;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/Regexp;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 843
    const/4 v1, 0x0

    .line 844
    goto/16 :goto_0

    :cond_6
    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "^[^{}]*$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 845
    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mName:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/yopeso/lieferando/R$string;->enter_only_valid_chars:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 846
    const/4 v1, 0x0

    .line 847
    goto/16 :goto_0

    .line 848
    :cond_7
    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mName:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 854
    :cond_8
    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLastName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v6, :cond_9

    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLastName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v8, :cond_a

    .line 855
    :cond_9
    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLastName:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mContext:Landroid/content/Context;

    sget v4, Lcom/yopeso/lieferando/R$string;->mandatory_field_limits_error_message:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 856
    const/4 v1, 0x0

    .line 857
    goto/16 :goto_1

    :cond_a
    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mRegexp:Ljava/util/Map;

    const-string v3, "lastname"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLastName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mRegexp:Ljava/util/Map;

    const-string v4, "lastname"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yopeso/lieferando/model/user/Regexp;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/Regexp;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 858
    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLastName:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mRegexp:Ljava/util/Map;

    const-string v4, "lastname"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yopeso/lieferando/model/user/Regexp;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/Regexp;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 859
    const/4 v1, 0x0

    .line 860
    goto/16 :goto_1

    :cond_b
    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLastName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "^[^{}]*$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 861
    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLastName:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/yopeso/lieferando/R$string;->enter_only_valid_chars:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 862
    const/4 v1, 0x0

    .line 863
    goto/16 :goto_1

    .line 864
    :cond_c
    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLastName:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 873
    :cond_d
    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v7, :cond_e

    .line 874
    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mPhoneNumber:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mContext:Landroid/content/Context;

    sget v4, Lcom/yopeso/lieferando/R$string;->mandatory_field_error_message_incorect_phone:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 875
    const/4 v1, 0x0

    .line 876
    goto/16 :goto_2

    :cond_e
    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mRegexp:Ljava/util/Map;

    const-string v3, "phone"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mRegexp:Ljava/util/Map;

    const-string v4, "phone"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yopeso/lieferando/model/user/Regexp;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/Regexp;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 877
    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mPhoneNumber:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mRegexp:Ljava/util/Map;

    const-string v4, "phone"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yopeso/lieferando/model/user/Regexp;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/Regexp;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 878
    const/4 v1, 0x0

    .line 879
    goto/16 :goto_2

    .line 880
    :cond_f
    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 884
    :cond_10
    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 885
    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mPhoneNumber:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mContext:Landroid/content/Context;

    sget v4, Lcom/yopeso/lieferando/R$string;->mandatory_field_error_message:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 886
    const/4 v1, 0x0

    .line 887
    goto/16 :goto_2

    :cond_11
    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v7, :cond_12

    .line 888
    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mPhoneNumber:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mContext:Landroid/content/Context;

    sget v4, Lcom/yopeso/lieferando/R$string;->mandatory_field_error_message_incorect_phone:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 889
    const/4 v1, 0x0

    .line 890
    goto/16 :goto_2

    :cond_12
    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mRegexp:Ljava/util/Map;

    const-string v3, "phone_pl"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mRegexp:Ljava/util/Map;

    const-string v4, "phone_pl"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yopeso/lieferando/model/user/Regexp;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/Regexp;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 891
    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mPhoneNumber:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mRegexp:Ljava/util/Map;

    const-string v4, "phone_pl"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yopeso/lieferando/model/user/Regexp;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/Regexp;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 892
    const/4 v1, 0x0

    .line 893
    goto/16 :goto_2

    .line 894
    :cond_13
    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 903
    .restart local v0    # "regexp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/yopeso/lieferando/model/user/Regexp;>;"
    :cond_14
    sget-object v2, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mEmail:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_15

    .line 904
    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mEmail:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mContext:Landroid/content/Context;

    sget v4, Lcom/yopeso/lieferando/R$string;->invalid_mail_format_error_message:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 905
    const/4 v1, 0x0

    .line 906
    goto/16 :goto_3

    :cond_15
    const-string v2, "email"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mEmail:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v2, "email"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yopeso/lieferando/model/user/Regexp;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/Regexp;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 907
    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mEmail:Landroid/widget/EditText;

    const-string v2, "email"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yopeso/lieferando/model/user/Regexp;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/Regexp;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 908
    const/4 v1, 0x0

    .line 909
    goto/16 :goto_3

    :cond_16
    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mEmail:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "^[^{}]*$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 910
    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mEmail:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/yopeso/lieferando/R$string;->enter_only_valid_chars:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 911
    const/4 v1, 0x0

    .line 912
    goto/16 :goto_3

    .line 913
    :cond_17
    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mEmail:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 920
    .end local v0    # "regexp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/yopeso/lieferando/model/user/Regexp;>;"
    :cond_18
    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mStreet:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_19

    .line 921
    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mStreet:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mContext:Landroid/content/Context;

    sget v4, Lcom/yopeso/lieferando/R$string;->mandatory_field_limits_error_message_street:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 922
    const/4 v1, 0x0

    .line 923
    goto/16 :goto_4

    :cond_19
    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mRegexp:Ljava/util/Map;

    const-string v3, "street"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mStreet:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mRegexp:Ljava/util/Map;

    const-string v4, "street"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yopeso/lieferando/model/user/Regexp;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/Regexp;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 924
    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mStreet:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mRegexp:Ljava/util/Map;

    const-string v4, "street"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yopeso/lieferando/model/user/Regexp;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/Regexp;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 925
    const/4 v1, 0x0

    .line 926
    goto/16 :goto_4

    :cond_1a
    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mStreet:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "^[^{}]*$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 927
    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mStreet:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/yopeso/lieferando/R$string;->enter_only_valid_chars:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 928
    const/4 v1, 0x0

    .line 929
    goto/16 :goto_4

    .line 930
    :cond_1b
    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mStreet:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 936
    :cond_1c
    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mRegexp:Ljava/util/Map;

    const-string v3, "house"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mHouseNr:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mRegexp:Ljava/util/Map;

    const-string v4, "house"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yopeso/lieferando/model/user/Regexp;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/Regexp;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 937
    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mHouseNr:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mRegexp:Ljava/util/Map;

    const-string v4, "house"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yopeso/lieferando/model/user/Regexp;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/Regexp;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 938
    const/4 v1, 0x0

    .line 939
    goto/16 :goto_5

    :cond_1d
    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mHouseNr:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "^[^{}]*$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 940
    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mHouseNr:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/yopeso/lieferando/R$string;->enter_only_valid_chars:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 941
    const/4 v1, 0x0

    .line 942
    goto/16 :goto_5

    .line 943
    :cond_1e
    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mHouseNr:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 951
    :cond_1f
    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mZipCode:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "^[^{}]*$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 952
    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mZipCode:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/yopeso/lieferando/R$string;->enter_only_valid_chars:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    .line 953
    const/4 v1, 0x0

    .line 954
    goto/16 :goto_6

    .line 955
    :cond_20
    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mZipCode:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v2, v5}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 962
    :cond_21
    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mCity:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "^[^{}]*$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 963
    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mCity:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/yopeso/lieferando/R$string;->enter_only_valid_chars:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 964
    const/4 v1, 0x0

    .line 965
    goto/16 :goto_7

    .line 966
    :cond_22
    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mCity:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 980
    :cond_23
    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mCompany:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 987
    :cond_24
    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mFloor:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    .line 995
    :cond_25
    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mSpecialNotes:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_a
.end method
