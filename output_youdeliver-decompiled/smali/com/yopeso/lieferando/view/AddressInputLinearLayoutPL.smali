.class public Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;
.super Lcom/yopeso/lieferando/view/AddressInputLinearLayout;
.source "AddressInputLinearLayoutPL.java"

# interfaces
.implements Lcom/yopeso/lieferando/callback/StreetSuggestionCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$CityListener;,
        Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$StreetListener;
    }
.end annotation


# instance fields
.field private delayInMillis:I

.field private mCity:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

.field private mCityProvided:Z

.field private mGpsCity:Ljava/lang/String;

.field private mGpsHouserNr:Ljava/lang/String;

.field private mGpsStreet:Ljava/lang/String;

.field private mHouseNr:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

.field private mNullAdapter:Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;

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

.field private mSearchStreetAdapter:Lcom/yopeso/lieferando/adapters/StreetSuggestionAdapter;

.field private mStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

.field private mStreetProvided:Z

.field private mStreetSuggestions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yopeso/lieferando/model/user/Street;",
            ">;"
        }
    .end annotation
.end field

.field private mZipCode:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;-><init>(Landroid/content/Context;)V

    .line 57
    const/16 v0, 0x5dc

    iput v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->delayInMillis:I

    .line 59
    iput-boolean v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mCityProvided:Z

    .line 60
    iput-boolean v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mStreetProvided:Z

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mNullAdapter:Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mStreetSuggestions:Ljava/util/List;

    .line 72
    iput-object p1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mContext:Landroid/content/Context;

    .line 73
    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->setup()V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    const/16 v0, 0x5dc

    iput v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->delayInMillis:I

    .line 59
    iput-boolean v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mCityProvided:Z

    .line 60
    iput-boolean v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mStreetProvided:Z

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mNullAdapter:Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mStreetSuggestions:Ljava/util/List;

    .line 84
    iput-object p1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mContext:Landroid/content/Context;

    .line 85
    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->setup()V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0, p1, p2, p3}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    const/16 v0, 0x5dc

    iput v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->delayInMillis:I

    .line 59
    iput-boolean v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mCityProvided:Z

    .line 60
    iput-boolean v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mStreetProvided:Z

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mNullAdapter:Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mStreetSuggestions:Ljava/util/List;

    .line 78
    iput-object p1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mContext:Landroid/content/Context;

    .line 79
    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->setup()V

    .line 80
    return-void
.end method

.method static synthetic access$0(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;)Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mCityProvided:Z

    return v0
.end method

.method static synthetic access$1(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mGpsCity:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;Z)V
    .locals 0

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mStreetProvided:Z

    return-void
.end method

.method static synthetic access$11(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;)Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mHouseNr:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    return-object v0
.end method

.method static synthetic access$12(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mZipCode:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$13(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;)Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mNullAdapter:Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;

    return-object v0
.end method

.method static synthetic access$14(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 593
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->performCityRequest(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$15(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;Z)V
    .locals 0

    .prologue
    .line 441
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->citySetUp(Z)V

    return-void
.end method

.method static synthetic access$16(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 597
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->performStreetRequest(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$17(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;)Lcom/yopeso/lieferando/adapters/StreetSuggestionAdapter;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mSearchStreetAdapter:Lcom/yopeso/lieferando/adapters/StreetSuggestionAdapter;

    return-object v0
.end method

.method static synthetic access$18(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;)I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->delayInMillis:I

    return v0
.end method

.method static synthetic access$2(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;)Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mCity:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;)Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mStreetProvided:Z

    return v0
.end method

.method static synthetic access$4(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mGpsStreet:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 609
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->showStreetSuggestions(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$6(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;)Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;)Ljava/util/List;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mStreetSuggestions:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$8(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;Z)V
    .locals 0

    .prologue
    .line 464
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->streetSetUp(Z)V

    return-void
.end method

.method static synthetic access$9(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;Z)V
    .locals 0

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mCityProvided:Z

    return-void
.end method

.method private citySetUp(Z)V
    .locals 5
    .param p1, "lostFocus"    # Z

    .prologue
    const/4 v4, 0x1

    .line 442
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mLocationSuggestions:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/LocationSuggestion;

    .line 443
    .local v0, "lss":Lcom/yopeso/lieferando/model/LocationSuggestion;
    const-class v1, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "citySetUp:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iput-boolean v4, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mCityProvided:Z

    .line 445
    iput-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mItemIsSelected:Lcom/yopeso/lieferando/model/LocationSuggestion;

    .line 446
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mGpsCity:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 447
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mCity:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mItemIsSelected:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 449
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mGpsCity:Ljava/lang/String;

    .line 450
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mItemIsSelected:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getPlz()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 451
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mZipCode:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mItemIsSelected:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getPlz()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 453
    :cond_1
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mItemIsSelected:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getCityId()I

    move-result v1

    if-lez v1, :cond_2

    .line 454
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mItemIsSelected:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getCityId()I

    move-result v1

    iput v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mCityId:I

    .line 455
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mHouseNr:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v1, v4}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setEnabled(Z)V

    .line 457
    :cond_2
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v1, v4}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setEnabled(Z)V

    .line 458
    if-nez p1, :cond_3

    .line 459
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->requestFocus()Z

    .line 460
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mCity:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->showDropDown()V

    .line 462
    :cond_3
    return-void
.end method

.method private getFirstStreetname()Ljava/lang/String;
    .locals 3

    .prologue
    .line 513
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mGpsStreet:Ljava/lang/String;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 514
    .local v0, "str":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 515
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 518
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mGpsStreet:Ljava/lang/String;

    goto :goto_0
.end method

.method private getProperStreetname(Ljava/util/List;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yopeso/lieferando/model/user/Street;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 495
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/yopeso/lieferando/model/user/Street;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 496
    .local v2, "permutations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mGpsStreet:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 497
    iget-object v5, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mGpsStreet:Ljava/lang/String;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 498
    .local v3, "str":[Ljava/lang/String;
    const-string v1, ""

    .line 499
    .local v1, "nStr":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, v3

    if-lt v0, v5, :cond_1

    .line 502
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 503
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 504
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 509
    invoke-direct {p0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->getFirstStreetname()Ljava/lang/String;

    move-result-object v5

    :goto_1
    return-object v5

    .line 500
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    aget-object v6, v3, v0

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 499
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 504
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yopeso/lieferando/model/user/Street;

    .line 505
    .local v4, "street":Lcom/yopeso/lieferando/model/user/Street;
    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/user/Street;->getStreet()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 506
    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/user/Street;->getStreet()Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method

.method private performCityRequest(Ljava/lang/String;)V
    .locals 4
    .param p1, "city"    # Ljava/lang/String;

    .prologue
    .line 594
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mRequestQueue:Lcom/android/volley/RequestQueue;

    new-instance v1, Lcom/yopeso/lieferando/net/requests/CityRequestPL;

    new-instance v2, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$CityListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$CityListener;-><init>(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$CityListener;)V

    invoke-direct {v1, p1, v2}, Lcom/yopeso/lieferando/net/requests/CityRequestPL;-><init>(Ljava/lang/String;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    const-string v2, "cityRequest"

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/net/requests/CityRequestPL;->withTag(Ljava/lang/Object;)Lcom/yopeso/lieferando/net/requests/base/JsonRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 595
    return-void
.end method

.method private performStreetRequest(Ljava/lang/String;)V
    .locals 4
    .param p1, "street"    # Ljava/lang/String;

    .prologue
    .line 598
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mRequestQueue:Lcom/android/volley/RequestQueue;

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mItemIsSelected:Lcom/yopeso/lieferando/model/LocationSuggestion;

    new-instance v2, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$StreetListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$StreetListener;-><init>(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$StreetListener;)V

    invoke-static {p1, v1, v2}, Lcom/yopeso/lieferando/net/requests/StreetRequestPL;->build(Ljava/lang/String;Lcom/yopeso/lieferando/model/LocationSuggestion;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)Lcom/yopeso/lieferando/net/requests/StreetRequestPL;

    move-result-object v1

    const-string v2, "streetRequest"

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/net/requests/StreetRequestPL;->withTag(Ljava/lang/Object;)Lcom/yopeso/lieferando/net/requests/base/JsonRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 599
    return-void
.end method

.method private showStreetSuggestions(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yopeso/lieferando/model/user/Street;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 610
    .local p1, "suggestions":Ljava/util/List;, "Ljava/util/List<Lcom/yopeso/lieferando/model/user/Street;>;"
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mStreetSuggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 611
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mStreetSuggestions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 612
    new-instance v0, Lcom/yopeso/lieferando/adapters/StreetSuggestionAdapter;

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mContext:Landroid/content/Context;

    sget v2, Lcom/yopeso/lieferando/R$layout;->auto_complete_item:I

    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mStreetSuggestions:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/yopeso/lieferando/adapters/StreetSuggestionAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Lcom/yopeso/lieferando/callback/StreetSuggestionCallback;)V

    iput-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mSearchStreetAdapter:Lcom/yopeso/lieferando/adapters/StreetSuggestionAdapter;

    .line 613
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mSearchStreetAdapter:Lcom/yopeso/lieferando/adapters/StreetSuggestionAdapter;

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 614
    return-void
.end method

.method private streetSetUp(Z)V
    .locals 4
    .param p1, "lostFocus"    # Z

    .prologue
    const/4 v3, 0x0

    .line 465
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mGpsStreet:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 467
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mStreetSuggestions:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->getProperStreetname(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 468
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->requestFocus()Z

    .line 469
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->showDropDown()V

    .line 470
    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->checkMandatoryFiedls()V

    .line 490
    :cond_0
    :goto_0
    iput-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mGpsStreet:Ljava/lang/String;

    .line 491
    return-void

    .line 473
    :cond_1
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mStreetSuggestions:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/user/Street;

    .line 474
    .local v0, "street":Lcom/yopeso/lieferando/model/user/Street;
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mItemIsSelected:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/Street;->getStreet()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/LocationSuggestion;->setStreetName(Ljava/lang/String;)V

    .line 475
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/Street;->getCityId()I

    move-result v1

    iput v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mCityId:I

    .line 477
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mItemIsSelected:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/Street;->getRegExp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/LocationSuggestion;->setRegExp(Ljava/lang/String;)V

    .line 478
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mItemIsSelected:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getReqExp()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 479
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mItemIsSelected:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/Street;->getPlz()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/LocationSuggestion;->setPlz(Ljava/lang/String;)V

    .line 480
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mZipCode:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mItemIsSelected:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getPlz()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 482
    :cond_2
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mItemIsSelected:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getStreetName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 483
    iput-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mGpsStreet:Ljava/lang/String;

    .line 484
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mHouseNr:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setEnabled(Z)V

    .line 485
    if-nez p1, :cond_0

    .line 486
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mHouseNr:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->requestFocus()Z

    .line 487
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->showDropDown()V

    goto :goto_0
.end method


# virtual methods
.method protected checkMandatoryFiedls()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 714
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 715
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v0, v2}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    .line 717
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mHouseNr:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 718
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mHouseNr:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v0, v2}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    .line 720
    :cond_1
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mZipCode:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 721
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mZipCode:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 723
    :cond_2
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mCity:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 724
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mCity:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v0, v2}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    .line 726
    :cond_3
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 727
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mName:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 729
    :cond_4
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mLastName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 730
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mLastName:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 733
    :cond_5
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 734
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 737
    :cond_6
    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->validate()Z

    .line 738
    return-void
.end method

.method public clearAllFields()V
    .locals 2

    .prologue
    .line 660
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mSetLocation:Z

    .line 661
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mName:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/UserData;->getPreName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 662
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mLastName:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/UserData;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 663
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mPhoneNumber:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/UserData;->getTelephone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 664
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 665
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mHouseNr:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 666
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mZipCode:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 667
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mCity:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 668
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mCompany:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 669
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mFloor:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 670
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mSpecialNotes:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 671
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mSetLocation:Z

    .line 672
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

    .line 794
    const/4 v2, 0x1

    .line 796
    .local v2, "returnObject":Z
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 798
    .local v1, "locationObject":Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 799
    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mName:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mContext:Landroid/content/Context;

    sget v6, Lcom/yopeso/lieferando/R$string;->mandatory_field_error_message:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 800
    const/4 v2, 0x0

    .line 817
    :goto_0
    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mLastName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 818
    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mLastName:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mContext:Landroid/content/Context;

    sget v6, Lcom/yopeso/lieferando/R$string;->mandatory_field_error_message:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 819
    const/4 v2, 0x0

    .line 836
    :goto_1
    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 837
    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    iget-object v5, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mContext:Landroid/content/Context;

    sget v6, Lcom/yopeso/lieferando/R$string;->add_address_mandatory_field_text:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    .line 838
    const/4 v2, 0x0

    .line 853
    :goto_2
    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mHouseNr:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 854
    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mHouseNr:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    iget-object v5, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mContext:Landroid/content/Context;

    sget v6, Lcom/yopeso/lieferando/R$string;->add_address_mandatory_field_text:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    .line 855
    const/4 v2, 0x0

    .line 871
    :goto_3
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v3

    invoke-interface {v3}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 872
    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mZipCode:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mZipCode:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x6

    if-ne v3, v5, :cond_13

    .line 873
    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mZipCode:Landroid/widget/EditText;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 874
    const-string v3, "plz"

    iget-object v5, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mZipCode:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 896
    :goto_4
    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mCity:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 897
    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mZipCode:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mContext:Landroid/content/Context;

    sget v6, Lcom/yopeso/lieferando/R$string;->select_postcode_error:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 898
    const/4 v2, 0x0

    .line 908
    :goto_5
    const-string v3, "cityId"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mCityId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 910
    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v3, ""

    iget-object v5, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 911
    :cond_0
    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/user/UserData;->getTelephone()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 912
    const-string v3, "tel"

    iget-object v5, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/user/UserData;->getTelephone()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 932
    :cond_1
    :goto_6
    const-string v3, "companyName"

    iget-object v5, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mCompany:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 933
    const-string v3, "level"

    iget-object v5, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mFloor:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 934
    const-string v3, "comment"

    iget-object v5, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mSpecialNotes:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 935
    const-string v3, "primary"

    iget-object v5, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mDefaultCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 936
    const-string v3, "customerPrename"

    iget-object v5, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mName:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 937
    const-string v3, "customerName"

    iget-object v5, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mLastName:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 938
    if-eqz v2, :cond_7

    .line 944
    .end local v1    # "locationObject":Lorg/json/JSONObject;
    :goto_7
    return-object v1

    .line 801
    .restart local v1    # "locationObject":Lorg/json/JSONObject;
    :cond_2
    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v7, :cond_3

    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v8, :cond_4

    .line 802
    :cond_3
    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mName:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mContext:Landroid/content/Context;

    sget v6, Lcom/yopeso/lieferando/R$string;->mandatory_field_limits_error_message:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 803
    const/4 v2, 0x0

    .line 804
    goto/16 :goto_0

    :cond_4
    const-string v3, "name"

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mName:Landroid/widget/EditText;

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

    if-nez v3, :cond_5

    .line 805
    iget-object v5, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mName:Landroid/widget/EditText;

    const-string v3, "name"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yopeso/lieferando/model/user/Regexp;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/user/Regexp;->getMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 806
    const/4 v2, 0x0

    .line 807
    goto/16 :goto_0

    .line 808
    :cond_5
    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "^[^{}]*$"

    invoke-virtual {v3, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 809
    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mName:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/yopeso/lieferando/R$string;->enter_only_valid_chars:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 810
    const/4 v2, 0x0

    .line 811
    goto/16 :goto_0

    .line 813
    :cond_6
    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mName:Landroid/widget/EditText;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 941
    .end local v1    # "locationObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 942
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .end local v0    # "e":Lorg/json/JSONException;
    :cond_7
    move-object v1, v4

    .line 944
    goto/16 :goto_7

    .line 820
    .restart local v1    # "locationObject":Lorg/json/JSONObject;
    :cond_8
    :try_start_1
    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mLastName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v7, :cond_9

    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mLastName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v8, :cond_a

    .line 821
    :cond_9
    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mLastName:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mContext:Landroid/content/Context;

    sget v6, Lcom/yopeso/lieferando/R$string;->mandatory_field_limits_error_message:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 822
    const/4 v2, 0x0

    .line 823
    goto/16 :goto_1

    :cond_a
    const-string v3, "lastname"

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mLastName:Landroid/widget/EditText;

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

    if-nez v3, :cond_b

    .line 824
    iget-object v5, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mLastName:Landroid/widget/EditText;

    const-string v3, "lastname"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yopeso/lieferando/model/user/Regexp;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/user/Regexp;->getMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 825
    const/4 v2, 0x0

    .line 826
    goto/16 :goto_1

    .line 827
    :cond_b
    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mLastName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "^[^{}]*$"

    invoke-virtual {v3, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 828
    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mLastName:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/yopeso/lieferando/R$string;->enter_only_valid_chars:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 829
    const/4 v2, 0x0

    .line 830
    goto/16 :goto_1

    .line 832
    :cond_c
    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mLastName:Landroid/widget/EditText;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 839
    :cond_d
    const-string v3, "street"

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->getText()Landroid/text/Editable;

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

    if-nez v3, :cond_e

    .line 840
    iget-object v5, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    const-string v3, "street"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yopeso/lieferando/model/user/Regexp;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/user/Regexp;->getMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    .line 841
    const/4 v2, 0x0

    .line 842
    goto/16 :goto_2

    .line 843
    :cond_e
    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "^[^{}]*$"

    invoke-virtual {v3, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 844
    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/yopeso/lieferando/R$string;->enter_only_valid_chars:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    .line 845
    const/4 v2, 0x0

    .line 846
    goto/16 :goto_2

    .line 848
    :cond_f
    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    .line 849
    const-string v3, "street"

    iget-object v5, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_2

    .line 856
    :cond_10
    const-string v3, "house"

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mHouseNr:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->getText()Landroid/text/Editable;

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

    if-nez v3, :cond_11

    .line 857
    iget-object v5, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mHouseNr:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    const-string v3, "house"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yopeso/lieferando/model/user/Regexp;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/user/Regexp;->getMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    .line 858
    const/4 v2, 0x0

    .line 859
    goto/16 :goto_3

    .line 860
    :cond_11
    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mHouseNr:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "^[^{}]*$"

    invoke-virtual {v3, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 861
    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mHouseNr:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/yopeso/lieferando/R$string;->enter_only_valid_chars:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    .line 862
    const/4 v2, 0x0

    .line 863
    goto/16 :goto_3

    .line 865
    :cond_12
    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mHouseNr:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    .line 866
    const-string v3, "number"

    iget-object v5, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mHouseNr:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_3

    .line 876
    :cond_13
    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mZipCode:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 877
    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mZipCode:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mContext:Landroid/content/Context;

    sget v6, Lcom/yopeso/lieferando/R$string;->add_address_mandatory_field_text:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 881
    :goto_8
    const/4 v2, 0x0

    .line 883
    goto/16 :goto_4

    .line 879
    :cond_14
    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mZipCode:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mContext:Landroid/content/Context;

    sget v6, Lcom/yopeso/lieferando/R$string;->add_valid_zipcode:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 884
    :cond_15
    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mZipCode:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mZipCode:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x5

    if-ne v3, v5, :cond_16

    .line 885
    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mZipCode:Landroid/widget/EditText;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 886
    const-string v3, "plz"

    iget-object v5, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mZipCode:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_4

    .line 888
    :cond_16
    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mZipCode:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 889
    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mZipCode:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mContext:Landroid/content/Context;

    sget v6, Lcom/yopeso/lieferando/R$string;->add_address_mandatory_field_text:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 893
    :goto_9
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 891
    :cond_17
    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mZipCode:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mContext:Landroid/content/Context;

    sget v6, Lcom/yopeso/lieferando/R$string;->add_valid_zipcode:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 900
    :cond_18
    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mCity:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "^[^{}]*$"

    invoke-virtual {v3, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_19

    .line 901
    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mCity:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/yopeso/lieferando/R$string;->enter_only_valid_chars:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    .line 902
    const/4 v2, 0x0

    .line 903
    goto/16 :goto_5

    .line 905
    :cond_19
    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mCity:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 917
    :cond_1a
    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 918
    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mPhoneNumber:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mContext:Landroid/content/Context;

    sget v6, Lcom/yopeso/lieferando/R$string;->add_address_mandatory_field_text:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 919
    const/4 v2, 0x0

    .line 929
    :goto_a
    const-string v3, "tel"

    iget-object v5, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_6

    .line 921
    :cond_1b
    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "^[^{}]*$"

    invoke-virtual {v3, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1c

    .line 922
    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/yopeso/lieferando/R$string;->enter_only_valid_chars:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 923
    const/4 v2, 0x0

    .line 924
    goto :goto_a

    .line 926
    :cond_1c
    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mPhoneNumber:Landroid/widget/EditText;

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

    .line 947
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    if-nez v1, :cond_0

    .line 948
    new-instance v1, Lcom/yopeso/lieferando/model/user/Location;

    invoke-direct {v1}, Lcom/yopeso/lieferando/model/user/Location;-><init>()V

    iput-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    .line 950
    :cond_0
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mLastName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/user/Location;->setName(Ljava/lang/String;)V

    .line 951
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/user/Location;->setPreName(Ljava/lang/String;)V

    .line 952
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/user/Location;->setStreet(Ljava/lang/String;)V

    .line 953
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    iget v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mCityId:I

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/user/Location;->setCityId(I)V

    .line 954
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mHouseNr:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/user/Location;->setHnr(Ljava/lang/String;)V

    .line 955
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mZipCode:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/user/Location;->setPlz(Ljava/lang/String;)V

    .line 956
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mCity:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/user/Location;->setCityName(Ljava/lang/String;)V

    .line 957
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mCompany:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/user/Location;->setCompany(Ljava/lang/String;)V

    .line 958
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mFloor:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/user/Location;->setEtage(Ljava/lang/String;)V

    .line 959
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mSpecialNotes:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/user/Location;->setComment(Ljava/lang/String;)V

    .line 960
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/user/Location;->setPhone(Ljava/lang/String;)V

    .line 961
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mDefaultCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 962
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/user/Location;->setPrimary(Z)V

    .line 965
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/UserData;->getLocations()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 971
    :goto_1
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/yopeso/lieferando/model/user/UserData;->addLocation(Lcom/yopeso/lieferando/model/user/Location;Landroid/content/Context;)V

    .line 972
    return-void

    .line 965
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/user/Location;

    .line 966
    .local v0, "location":Lcom/yopeso/lieferando/model/user/Location;
    invoke-virtual {v0, v3}, Lcom/yopeso/lieferando/model/user/Location;->setPrimary(Z)V

    goto :goto_0

    .line 969
    .end local v0    # "location":Lcom/yopeso/lieferando/model/user/Location;
    :cond_2
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {v1, v3}, Lcom/yopeso/lieferando/model/user/Location;->setPrimary(Z)V

    goto :goto_1
.end method

.method public onLocationSelected(Lcom/yopeso/lieferando/model/LocationSuggestion;)V
    .locals 4
    .param p1, "ls"    # Lcom/yopeso/lieferando/model/LocationSuggestion;

    .prologue
    const/4 v3, 0x1

    .line 416
    const-class v0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onLocationSelected:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iput-boolean v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mCityProvided:Z

    .line 418
    iput-object p1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mItemIsSelected:Lcom/yopeso/lieferando/model/LocationSuggestion;

    .line 419
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mCity:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mItemIsSelected:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 420
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mItemIsSelected:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getPlz()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mZipCode:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mItemIsSelected:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getPlz()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mItemIsSelected:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getCityId()I

    move-result v0

    if-lez v0, :cond_1

    .line 424
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mItemIsSelected:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getCityId()I

    move-result v0

    iput v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mCityId:I

    .line 425
    iput-boolean v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mStreetProvided:Z

    .line 426
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mHouseNr:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v0, v3}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setEnabled(Z)V

    .line 428
    :cond_1
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mGpsStreet:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 430
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mGpsStreet:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_2

    .line 431
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mGpsStreet:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->performStreetRequest(Ljava/lang/String;)V

    .line 437
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v0, v3}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setEnabled(Z)V

    .line 439
    return-void

    .line 435
    :cond_3
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->requestFocus()Z

    goto :goto_0
.end method

.method public onStreetSelected(Lcom/yopeso/lieferando/model/user/Street;)V
    .locals 3
    .param p1, "street"    # Lcom/yopeso/lieferando/model/user/Street;

    .prologue
    const/4 v2, 0x1

    .line 638
    iput-boolean v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mStreetProvided:Z

    .line 639
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mItemIsSelected:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/user/Street;->getStreet()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->setStreetName(Ljava/lang/String;)V

    .line 640
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/user/Street;->getCityId()I

    move-result v0

    iput v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mCityId:I

    .line 641
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mItemIsSelected:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/user/Street;->getRegExp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->setRegExp(Ljava/lang/String;)V

    .line 642
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mItemIsSelected:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getReqExp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 643
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mItemIsSelected:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/user/Street;->getPlz()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->setPlz(Ljava/lang/String;)V

    .line 644
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mZipCode:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mItemIsSelected:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getPlz()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 646
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mItemIsSelected:Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getStreetName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 647
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mHouseNr:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v0, v2}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setEnabled(Z)V

    .line 648
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mGpsHouserNr:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 649
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mHouseNr:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mGpsHouserNr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 650
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mGpsHouserNr:Ljava/lang/String;

    .line 652
    :cond_1
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mHouseNr:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->requestFocus()Z

    .line 653
    return-void
.end method

.method public setFieldsFromAddress(Landroid/location/Address;)V
    .locals 4
    .param p1, "address"    # Landroid/location/Address;

    .prologue
    const/4 v3, 0x1

    .line 526
    if-eqz p1, :cond_2

    .line 527
    const-class v1, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "setFieldsFromAddress address != null:"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    invoke-virtual {p1}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 529
    invoke-virtual {p1}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mGpsCity:Ljava/lang/String;

    .line 530
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mCity:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mGpsCity:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 531
    iput-boolean v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mSetLocation:Z

    .line 532
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mGpsCity:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_0

    .line 533
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mGpsCity:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->performCityRequest(Ljava/lang/String;)V

    .line 535
    :cond_0
    invoke-virtual {p1}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 536
    invoke-virtual {p1}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mGpsStreet:Ljava/lang/String;

    .line 538
    :cond_1
    invoke-static {p1}, Lcom/yopeso/lieferando/util/GeoUtils;->getHouseNumberFromAddress(Landroid/location/Address;)Ljava/lang/String;

    move-result-object v0

    .line 539
    .local v0, "houserNr":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 540
    iput-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mGpsHouserNr:Ljava/lang/String;

    .line 544
    .end local v0    # "houserNr":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public setLocationField()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 744
    iput-boolean v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mSetLocation:Z

    .line 746
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/UserData;->getLocations()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mLocationSelectedIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/user/Location;

    iput-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    .line 747
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/Location;->getCityId()I

    move-result v0

    iput v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mCityId:I

    .line 748
    const-class v0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "setLocationField: mCity.setText(mLocationSelected.getCityName());"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mCity:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/Location;->getCityName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 750
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/Location;->getStreet()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 751
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mZipCode:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/Location;->getPlz()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 752
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mHouseNr:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/Location;->getHnr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 754
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/Location;->getPreName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/Location;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 755
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mName:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/UserData;->getPreName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 756
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mLastName:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/UserData;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 762
    :goto_0
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/Location;->getPhone()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 763
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mPhoneNumber:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/Location;->getPhone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 769
    :goto_1
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/Location;->getCompany()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 770
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mCompany:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/Location;->getCompany()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 774
    :goto_2
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/Location;->getEtage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/Location;->getEtage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 775
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mFloor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/Location;->getEtage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 779
    :goto_3
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/Location;->getComment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 780
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mSpecialNotes:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/Location;->getComment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 784
    :goto_4
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/Location;->isPrimary()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 785
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mDefaultCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 787
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mSetLocation:Z

    .line 788
    return-void

    .line 758
    :cond_2
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mName:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/Location;->getPreName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 759
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mLastName:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mLocationSelected:Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/Location;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 766
    :cond_3
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mPhoneNumber:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/UserData;->getTelephone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 772
    :cond_4
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mCompany:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 777
    :cond_5
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mFloor:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 782
    :cond_6
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mSpecialNotes:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4
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
    .line 618
    .local p1, "mSuggestions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/LocationSuggestion;>;"
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mLocationSuggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 619
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mLocationSuggestions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 620
    return-void
.end method

.method protected setNotValidCharsError()V
    .locals 3

    .prologue
    .line 679
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "^[^{}]*$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 680
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$string;->enter_only_valid_chars:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    .line 682
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mHouseNr:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "^[^{}]*$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 683
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mHouseNr:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$string;->enter_only_valid_chars:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    .line 685
    :cond_1
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mZipCode:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "^[^{}]*$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 686
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mZipCode:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$string;->enter_only_valid_chars:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 688
    :cond_2
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mCity:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "^[^{}]*$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 689
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mCity:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$string;->enter_only_valid_chars:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    .line 691
    :cond_3
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "^[^{}]*$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 692
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mName:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$string;->enter_only_valid_chars:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 694
    :cond_4
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mLastName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "^[^{}]*$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 695
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mLastName:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$string;->enter_only_valid_chars:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 697
    :cond_5
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "^[^{}]*$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 698
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$string;->enter_only_valid_chars:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 700
    :cond_6
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mCompany:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "^[^{}]*$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 701
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mCompany:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$string;->enter_only_valid_chars:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 703
    :cond_7
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mFloor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "^[^{}]*$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 704
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mFloor:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$string;->enter_only_valid_chars:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 706
    :cond_8
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mSpecialNotes:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "^[^{}]*$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 707
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mSpecialNotes:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$string;->enter_only_valid_chars:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 709
    :cond_9
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
    .line 1112
    .local p1, "regexp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/yopeso/lieferando/model/user/Regexp;>;"
    iput-object p1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mRegexp:Ljava/util/Map;

    .line 1113
    return-void
.end method

.method public setStreetSuggestions(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/user/Street;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 624
    .local p1, "mSuggestions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/user/Street;>;"
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mStreetSuggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 625
    if-eqz p1, :cond_0

    .line 626
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mStreetSuggestions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 629
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mGpsStreet:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mStreetSuggestions:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mStreetSuggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 630
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->streetSetUp(Z)V

    .line 634
    :goto_0
    return-void

    .line 632
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mGpsStreet:Ljava/lang/String;

    goto :goto_0
.end method

.method protected setup()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 90
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mRequestQueue:Lcom/android/volley/RequestQueue;

    .line 91
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$layout;->address_input_layout:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 93
    new-instance v0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$1;

    invoke-direct {v0, p0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$1;-><init>(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;)V

    iput-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mTextWatcher:Landroid/text/TextWatcher;

    .line 118
    sget v0, Lcom/yopeso/lieferando/R$id;->AddressName:I

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mName:Landroid/widget/EditText;

    .line 119
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mName:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 120
    sget v0, Lcom/yopeso/lieferando/R$id;->AddressLastName:I

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mLastName:Landroid/widget/EditText;

    .line 121
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mLastName:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 123
    sget v0, Lcom/yopeso/lieferando/R$id;->AddressStreet:I

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    iput-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    .line 124
    sget v0, Lcom/yopeso/lieferando/R$id;->AddressHauseNr:I

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    iput-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mHouseNr:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    .line 125
    sget v0, Lcom/yopeso/lieferando/R$id;->AddressZipCode:I

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mZipCode:Landroid/widget/EditText;

    .line 126
    sget v0, Lcom/yopeso/lieferando/R$id;->AddressCity:I

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    iput-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mCity:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    .line 127
    sget v0, Lcom/yopeso/lieferando/R$id;->AddressCompany:I

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mCompany:Landroid/widget/EditText;

    .line 128
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mCompany:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 129
    sget v0, Lcom/yopeso/lieferando/R$id;->AddressFloor:I

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mFloor:Landroid/widget/EditText;

    .line 130
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mFloor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 131
    sget v0, Lcom/yopeso/lieferando/R$id;->AddressSpecialNotes:I

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mSpecialNotes:Landroid/widget/EditText;

    .line 132
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mSpecialNotes:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 133
    sget v0, Lcom/yopeso/lieferando/R$id;->AddressDefault:I

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mDefaultCheckbox:Landroid/widget/CheckBox;

    .line 135
    sget v0, Lcom/yopeso/lieferando/R$id;->PhoneNumber:I

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mPhoneNumber:Landroid/widget/EditText;

    .line 136
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mPhoneNumber:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 139
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v0, v2}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setEnabled(Z)V

    .line 140
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mHouseNr:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v0, v2}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setEnabled(Z)V

    .line 142
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mCity:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v0, v3}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setThreshold(I)V

    .line 143
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v0, v3}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setThreshold(I)V

    .line 152
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mCity:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    new-instance v1, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$2;

    invoke-direct {v1, p0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$2;-><init>(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;)V

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 217
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mCity:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    new-instance v1, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$3;

    invoke-direct {v1, p0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$3;-><init>(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;)V

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 231
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mCity:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    new-instance v1, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$4;

    invoke-direct {v1, p0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$4;-><init>(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;)V

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 247
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    new-instance v1, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$5;

    invoke-direct {v1, p0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$5;-><init>(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;)V

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 299
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    new-instance v1, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$6;

    invoke-direct {v1, p0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$6;-><init>(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;)V

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 312
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    new-instance v1, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$7;

    invoke-direct {v1, p0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$7;-><init>(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;)V

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 327
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mHouseNr:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    new-instance v1, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$8;

    invoke-direct {v1, p0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$8;-><init>(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;)V

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 391
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mHouseNr:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    new-instance v1, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$9;

    invoke-direct {v1, p0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$9;-><init>(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;)V

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 400
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mHouseNr:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    new-instance v1, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$10;

    invoke-direct {v1, p0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL$10;-><init>(Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;)V

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 412
    return-void
.end method

.method public showLocationSuggestions(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yopeso/lieferando/model/LocationSuggestion;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 602
    .local p1, "suggestions":Ljava/util/List;, "Ljava/util/List<Lcom/yopeso/lieferando/model/LocationSuggestion;>;"
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mLocationSuggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 603
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mLocationSuggestions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 604
    new-instance v0, Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapterPL;

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mContext:Landroid/content/Context;

    sget v2, Lcom/yopeso/lieferando/R$layout;->auto_complete_item:I

    iget-object v3, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mLocationSuggestions:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapterPL;-><init>(Landroid/content/Context;ILjava/util/List;Lcom/yopeso/lieferando/callback/LocationSuggestionCallback;)V

    iput-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mSearchSuggestionsAdapter:Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;

    .line 605
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mSearchSuggestionsAdapter:Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;->setNotifyOnChange(Z)V

    .line 606
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mCity:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mSearchSuggestionsAdapter:Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 607
    return-void
.end method

.method public validate()Z
    .locals 8

    .prologue
    const/16 v7, 0x19

    const/4 v6, 0x6

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 976
    const/4 v0, 0x1

    .line 978
    .local v0, "returnObject":Z
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 979
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mName:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mContext:Landroid/content/Context;

    sget v3, Lcom/yopeso/lieferando/R$string;->add_address_mandatory_field_text:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 980
    const/4 v0, 0x0

    .line 994
    :goto_0
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mLastName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 995
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mLastName:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mContext:Landroid/content/Context;

    sget v3, Lcom/yopeso/lieferando/R$string;->add_address_mandatory_field_text:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 996
    const/4 v0, 0x0

    .line 1011
    :goto_1
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v1

    if-nez v1, :cond_f

    .line 1013
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1014
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mPhoneNumber:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mContext:Landroid/content/Context;

    sget v3, Lcom/yopeso/lieferando/R$string;->mandatory_field_error_message:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 1015
    const/4 v0, 0x0

    .line 1041
    :goto_2
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1042
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mContext:Landroid/content/Context;

    sget v3, Lcom/yopeso/lieferando/R$string;->add_address_mandatory_field_text:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    .line 1043
    const/4 v0, 0x0

    .line 1057
    :goto_3
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mHouseNr:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1058
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mHouseNr:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mContext:Landroid/content/Context;

    sget v3, Lcom/yopeso/lieferando/R$string;->add_address_mandatory_field_text:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    .line 1059
    const/4 v0, 0x0

    .line 1070
    :goto_4
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mCity:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1071
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mCity:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mContext:Landroid/content/Context;

    sget v3, Lcom/yopeso/lieferando/R$string;->add_address_mandatory_field_text:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    .line 1072
    const/4 v0, 0x0

    .line 1081
    :goto_5
    iget v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mCityId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mCityId:I

    if-nez v1, :cond_1

    .line 1082
    :cond_0
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mCity:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$string;->enter_only_valid_chars:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    .line 1086
    :cond_1
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mCompany:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "^[^{}]*$"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 1087
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mCompany:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$string;->enter_only_valid_chars:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 1088
    const/4 v0, 0x0

    .line 1093
    :goto_6
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mFloor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "^[^{}]*$"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 1094
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mFloor:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$string;->enter_only_valid_chars:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 1095
    const/4 v0, 0x0

    .line 1101
    :goto_7
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mSpecialNotes:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "^[^{}]*$"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 1102
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mSpecialNotes:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$string;->enter_only_valid_chars:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 1103
    const/4 v0, 0x0

    .line 1108
    :goto_8
    return v0

    .line 981
    :cond_2
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v5, :cond_3

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v7, :cond_4

    .line 982
    :cond_3
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mName:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mContext:Landroid/content/Context;

    sget v3, Lcom/yopeso/lieferando/R$string;->mandatory_field_limits_error_message:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 983
    const/4 v0, 0x0

    .line 984
    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mRegexp:Ljava/util/Map;

    const-string v2, "name"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mRegexp:Ljava/util/Map;

    const-string v3, "name"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yopeso/lieferando/model/user/Regexp;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/Regexp;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 985
    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mName:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mRegexp:Ljava/util/Map;

    const-string v3, "name"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yopeso/lieferando/model/user/Regexp;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/Regexp;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 986
    const/4 v0, 0x0

    .line 987
    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "^[^{}]*$"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 988
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mName:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$string;->enter_only_valid_chars:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 989
    const/4 v0, 0x0

    .line 990
    goto/16 :goto_0

    .line 991
    :cond_6
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mName:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 997
    :cond_7
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mLastName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v5, :cond_8

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mLastName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v7, :cond_9

    .line 998
    :cond_8
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mLastName:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mContext:Landroid/content/Context;

    sget v3, Lcom/yopeso/lieferando/R$string;->mandatory_field_limits_error_message:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 999
    const/4 v0, 0x0

    .line 1000
    goto/16 :goto_1

    :cond_9
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mRegexp:Ljava/util/Map;

    const-string v2, "lastname"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mLastName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mRegexp:Ljava/util/Map;

    const-string v3, "lastname"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yopeso/lieferando/model/user/Regexp;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/Regexp;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 1001
    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mLastName:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mRegexp:Ljava/util/Map;

    const-string v3, "lastname"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yopeso/lieferando/model/user/Regexp;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/Regexp;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 1002
    const/4 v0, 0x0

    .line 1003
    goto/16 :goto_1

    :cond_a
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mLastName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "^[^{}]*$"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 1004
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mLastName:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$string;->enter_only_valid_chars:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 1005
    const/4 v0, 0x0

    .line 1006
    goto/16 :goto_1

    .line 1007
    :cond_b
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mLastName:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1016
    :cond_c
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v6, :cond_d

    .line 1017
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mPhoneNumber:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mContext:Landroid/content/Context;

    sget v3, Lcom/yopeso/lieferando/R$string;->mandatory_field_error_message_incorect_phone:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 1018
    const/4 v0, 0x0

    .line 1019
    goto/16 :goto_2

    :cond_d
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mRegexp:Ljava/util/Map;

    const-string v2, "phone"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mRegexp:Ljava/util/Map;

    const-string v3, "phone"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yopeso/lieferando/model/user/Regexp;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/Regexp;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 1020
    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mPhoneNumber:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mRegexp:Ljava/util/Map;

    const-string v3, "phone"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yopeso/lieferando/model/user/Regexp;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/Regexp;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 1021
    const/4 v0, 0x0

    .line 1022
    goto/16 :goto_2

    .line 1023
    :cond_e
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1027
    :cond_f
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1028
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mPhoneNumber:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mContext:Landroid/content/Context;

    sget v3, Lcom/yopeso/lieferando/R$string;->mandatory_field_error_message:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 1029
    const/4 v0, 0x0

    .line 1030
    goto/16 :goto_2

    :cond_10
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v6, :cond_11

    .line 1031
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mPhoneNumber:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mContext:Landroid/content/Context;

    sget v3, Lcom/yopeso/lieferando/R$string;->mandatory_field_error_message_incorect_phone:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 1032
    const/4 v0, 0x0

    .line 1033
    goto/16 :goto_2

    :cond_11
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mRegexp:Ljava/util/Map;

    const-string v2, "phone_pl"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mRegexp:Ljava/util/Map;

    const-string v3, "phone_pl"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yopeso/lieferando/model/user/Regexp;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/Regexp;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 1034
    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mPhoneNumber:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mRegexp:Ljava/util/Map;

    const-string v3, "phone_pl"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yopeso/lieferando/model/user/Regexp;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/Regexp;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 1035
    const/4 v0, 0x0

    .line 1036
    goto/16 :goto_2

    .line 1037
    :cond_12
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1044
    :cond_13
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_14

    .line 1045
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mContext:Landroid/content/Context;

    sget v3, Lcom/yopeso/lieferando/R$string;->mandatory_field_limits_error_message_street:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    .line 1046
    const/4 v0, 0x0

    .line 1047
    goto/16 :goto_3

    :cond_14
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mRegexp:Ljava/util/Map;

    const-string v2, "street"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mRegexp:Ljava/util/Map;

    const-string v3, "street"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yopeso/lieferando/model/user/Regexp;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/Regexp;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 1048
    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mRegexp:Ljava/util/Map;

    const-string v3, "street"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yopeso/lieferando/model/user/Regexp;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/Regexp;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    .line 1049
    const/4 v0, 0x0

    .line 1050
    goto/16 :goto_3

    :cond_15
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "^[^{}]*$"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 1051
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$string;->enter_only_valid_chars:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    .line 1052
    const/4 v0, 0x0

    .line 1053
    goto/16 :goto_3

    .line 1054
    :cond_16
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mStreet:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v1, v4}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 1060
    :cond_17
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mRegexp:Ljava/util/Map;

    const-string v2, "house"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mHouseNr:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mRegexp:Ljava/util/Map;

    const-string v3, "house"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yopeso/lieferando/model/user/Regexp;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/Regexp;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 1061
    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mHouseNr:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mRegexp:Ljava/util/Map;

    const-string v3, "house"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yopeso/lieferando/model/user/Regexp;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/Regexp;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    .line 1062
    const/4 v0, 0x0

    .line 1063
    goto/16 :goto_4

    :cond_18
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mHouseNr:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "^[^{}]*$"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 1064
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mHouseNr:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$string;->enter_only_valid_chars:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    .line 1065
    const/4 v0, 0x0

    .line 1066
    goto/16 :goto_4

    .line 1067
    :cond_19
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mHouseNr:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v1, v4}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 1073
    :cond_1a
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mCity:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "^[^{}]*$"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 1074
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mCity:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$string;->enter_only_valid_chars:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    .line 1075
    const/4 v0, 0x0

    .line 1076
    goto/16 :goto_5

    .line 1077
    :cond_1b
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mCity:Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    invoke-virtual {v1, v4}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 1090
    :cond_1c
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mCompany:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 1097
    :cond_1d
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mFloor:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 1105
    :cond_1e
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayoutPL;->mSpecialNotes:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_8
.end method
