.class public Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;
.super Landroid/support/v4/app/LRDialogFragment;
.source "RestaurantInfoDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog$RestaurantListener;
    }
.end annotation


# static fields
.field private static final RESTAURANT_KEY:Ljava/lang/String; = "restaurant_key"


# instance fields
.field private contentView:Landroid/view/View;

.field private mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/support/v4/app/LRDialogFragment;-><init>()V

    .line 43
    return-void
.end method

.method static synthetic access$0(Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    return-void
.end method

.method static synthetic access$1(Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;)Lcom/yopeso/lieferando/model/restaurant/Restaurant;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    return-object v0
.end method

.method static synthetic access$2(Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;)Landroid/view/View;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->contentView:Landroid/view/View;

    return-object v0
.end method

.method public static newInstance(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;
    .locals 3
    .param p0, "r"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .prologue
    .line 46
    new-instance v1, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;

    invoke-direct {v1}, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;-><init>()V

    .line 47
    .local v1, "dialog":Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 48
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "restaurant_key"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 49
    invoke-virtual {v1, v0}, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->setArguments(Landroid/os/Bundle;)V

    .line 50
    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/support/v4/app/LRDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "restaurant_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    iput-object v0, p0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .line 57
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 19
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$layout;->restaurant_info_dialog:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->contentView:Landroid/view/View;

    .line 63
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->contentView:Landroid/view/View;

    sget v3, Lcom/yopeso/lieferando/R$id;->openingInfo:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getOpeningsForWeek(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getPreorderOffset()I

    move-result v2

    const/16 v3, 0x1c20

    if-lt v2, v3, :cond_f

    .line 66
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getPreorderOffset()I

    move-result v2

    div-int/lit16 v12, v2, 0xe10

    .line 67
    .local v12, "hours":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getPreorderOffset()I

    move-result v2

    mul-int/lit16 v3, v12, 0xe10

    sub-int/2addr v2, v3

    div-int/lit8 v14, v2, 0x3c

    .line 69
    .local v14, "minutes":I
    if-nez v14, :cond_e

    .line 70
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->contentView:Landroid/view/View;

    sget v3, Lcom/yopeso/lieferando/R$id;->preorderinginfo:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/yopeso/lieferando/R$string;->preorderingOffsetValueHour:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    .end local v12    # "hours":I
    .end local v14    # "minutes":I
    :goto_0
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 85
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->contentView:Landroid/view/View;

    sget v3, Lcom/yopeso/lieferando/R$id;->addressInfo:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/yopeso/lieferando/R$string;->restaurnat_address:I

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getAddressStreet()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getAddressNumber()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v5, v6

    const/4 v6, 0x2

    .line 86
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getZipCode()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v5, v6

    const/4 v6, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getCity()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v5, v6

    .line 85
    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    :goto_1
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v2

    if-nez v2, :cond_b

    .line 96
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getmCorporateName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 97
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v2

    new-instance v3, Lcom/yopeso/lieferando/net/requests/RestaurantRequest;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getServiceUrl()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog$RestaurantListener;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog$RestaurantListener;-><init>(Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;)V

    invoke-direct {v3, v4, v5}, Lcom/yopeso/lieferando/net/requests/RestaurantRequest;-><init>(Ljava/lang/String;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v2, v3}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 98
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->contentView:Landroid/view/View;

    sget v3, Lcom/yopeso/lieferando/R$id;->companyInfo:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/yopeso/lieferando/R$string;->companyLabel:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getmCorporateName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->contentView:Landroid/view/View;

    sget v3, Lcom/yopeso/lieferando/R$id;->addressInfoImprint:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/yopeso/lieferando/R$string;->restaurnat_addressHeader:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/yopeso/lieferando/R$string;->restaurnat_address_imprint:I

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getAddressStreet()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v6, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getAddressNumber()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v6, v17

    const/16 v17, 0x2

    .line 100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getZipCode()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v6, v17

    const/16 v17, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getCity()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v6, v17

    .line 99
    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getTelephone()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 102
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->contentView:Landroid/view/View;

    sget v3, Lcom/yopeso/lieferando/R$id;->PhoneInfoImprint:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/yopeso/lieferando/R$string;->phone:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getTelephone()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getmFax()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 104
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->contentView:Landroid/view/View;

    sget v3, Lcom/yopeso/lieferando/R$id;->FaxInfoImprint:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/yopeso/lieferando/R$string;->fax:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getmFax()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getmEmail()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 106
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->contentView:Landroid/view/View;

    sget v3, Lcom/yopeso/lieferando/R$id;->EmailInfoImprint:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/yopeso/lieferando/R$string;->e_mail:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getmEmail()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getmContact()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 108
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->contentView:Landroid/view/View;

    sget v3, Lcom/yopeso/lieferando/R$id;->OwnerInfoImprint:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/yopeso/lieferando/R$string;->owner:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getmContact()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getmTradeOffice()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 113
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->getView()Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$id;->tradeOfficeInfoImprint:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/yopeso/lieferando/R$string;->tradeOffice:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getmTradeOffice()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getmRegisterCourt()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 115
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->getView()Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$id;->registerCourtInfoImprint:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getmRegisterCourt()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getmRegisterCourtNr()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 117
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->getView()Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$id;->registerCourtNrImprint:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getmRegisterCourtNr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getmTaxIdNr()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 119
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->getView()Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$id;->taxIdNrNrImprint:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/yopeso/lieferando/R$string;->ust_nr:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getmTaxIdNr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getmAdditionalContacts()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b

    .line 121
    const-string v11, ""

    .line 122
    .local v11, "email2":Ljava/lang/String;
    const-string v15, ""

    .line 123
    .local v15, "owner2":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getmAdditionalContacts()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_11

    .line 139
    invoke-static {v15}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 140
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->getView()Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$id;->OwnerInfoImprint2:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->getView()Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$id;->OwnerInfoImprint2:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 143
    :cond_a
    invoke-static {v11}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 144
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->getView()Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$id;->EmailInfoImprint2:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->getView()Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$id;->EmailInfoImprint2:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 150
    .end local v11    # "email2":Ljava/lang/String;
    .end local v15    # "owner2":Ljava/lang/String;
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v8

    check-cast v8, Lcom/yopeso/lieferando/LieferandoApplication;

    .line 151
    .local v8, "app":Lcom/yopeso/lieferando/LieferandoApplication;
    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v2

    invoke-static {v2}, Lcom/yopeso/lieferando/util/PaymentSettingsUtil;->getInstance(Lcom/yopeso/lieferando/model/SettingsContent;)Lcom/yopeso/lieferando/util/PaymentSettingsUtil;

    move-result-object v16

    .line 153
    .local v16, "paymentSettings":Lcom/yopeso/lieferando/util/PaymentSettingsUtil;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->contentView:Landroid/view/View;

    sget v3, Lcom/yopeso/lieferando/R$id;->PaymentCashBlack:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/yopeso/lieferando/util/PaymentSettingsUtil;->isCashAvailable(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 154
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->contentView:Landroid/view/View;

    sget v3, Lcom/yopeso/lieferando/R$id;->PaymentSofortblack:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/yopeso/lieferando/util/PaymentSettingsUtil;->isEbankingAvailable(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v2, 0x0

    :goto_4
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 155
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->contentView:Landroid/view/View;

    sget v3, Lcom/yopeso/lieferando/R$id;->paymentsOnlineInfo:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/yopeso/lieferando/util/PaymentSettingsUtil;->isPaypalAvailable(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Z

    move-result v2

    if-nez v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/yopeso/lieferando/util/PaymentSettingsUtil;->isCreditAvailable(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Z

    move-result v2

    if-eqz v2, :cond_17

    :cond_c
    const/4 v2, 0x0

    :goto_5
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 156
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->contentView:Landroid/view/View;

    sget v3, Lcom/yopeso/lieferando/R$id;->PaymentPayUblack:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/yopeso/lieferando/util/PaymentSettingsUtil;->isPayUAvailable(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v2

    if-eqz v2, :cond_18

    const/4 v2, 0x0

    :goto_6
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 158
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->contentView:Landroid/view/View;

    sget v3, Lcom/yopeso/lieferando/R$id;->textView1:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 159
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getDescription()Ljava/lang/String;

    move-result-object v13

    .line 160
    .local v13, "mInfoHtml":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getDescription()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 161
    const-string v2, "\n"

    const-string v3, "<BR>"

    invoke-virtual {v13, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 162
    const-string v10, "<style type=\'text/css\'> a:link{text-decoration : none; color: black; }</style> "

    .line 163
    .local v10, "css":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->contentView:Landroid/view/View;

    sget v3, Lcom/yopeso/lieferando/R$id;->InfoWebView:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    .line 164
    .local v1, "body":Landroid/webkit/WebView;
    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "text/html"

    const-string v5, "UTF-8"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    new-instance v2, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog$1;-><init>(Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 172
    .end local v1    # "body":Landroid/webkit/WebView;
    .end local v10    # "css":Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->contentView:Landroid/view/View;

    sget v3, Lcom/yopeso/lieferando/R$id;->InfoDialog:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog$2;-><init>(Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v9, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 179
    .local v9, "builder":Landroid/app/AlertDialog$Builder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->contentView:Landroid/view/View;

    invoke-virtual {v9, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 180
    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    .line 73
    .end local v8    # "app":Lcom/yopeso/lieferando/LieferandoApplication;
    .end local v9    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v13    # "mInfoHtml":Ljava/lang/String;
    .end local v16    # "paymentSettings":Lcom/yopeso/lieferando/util/PaymentSettingsUtil;
    .restart local v12    # "hours":I
    .restart local v14    # "minutes":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->contentView:Landroid/view/View;

    sget v3, Lcom/yopeso/lieferando/R$id;->preorderinginfo:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/yopeso/lieferando/R$string;->preorderingOffsetValueMin:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v5, v6

    const/4 v6, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 77
    .end local v12    # "hours":I
    .end local v14    # "minutes":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->contentView:Landroid/view/View;

    sget v3, Lcom/yopeso/lieferando/R$id;->preorderingInfoHeader:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 78
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->contentView:Landroid/view/View;

    sget v3, Lcom/yopeso/lieferando/R$id;->preorderinginfo:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 89
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->contentView:Landroid/view/View;

    sget v3, Lcom/yopeso/lieferando/R$id;->addressInfo:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getAddressStreet()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getAddressNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->contentView:Landroid/view/View;

    sget v3, Lcom/yopeso/lieferando/R$id;->addressInfo2:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getZipCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->mRestaurant:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getCity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 123
    .restart local v11    # "email2":Ljava/lang/String;
    .restart local v15    # "owner2":Ljava/lang/String;
    :cond_11
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/yopeso/lieferando/model/restaurant/Restaurant$AdditionalContactDto;

    .line 124
    .local v7, "adc":Lcom/yopeso/lieferando/model/restaurant/Restaurant$AdditionalContactDto;
    invoke-static {v11}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 126
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 128
    :cond_12
    invoke-static {v15}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 130
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 132
    :cond_13
    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/restaurant/Restaurant$AdditionalContactDto;->getEmail()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 133
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/yopeso/lieferando/R$string;->e_mail:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/restaurant/Restaurant$AdditionalContactDto;->getEmail()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 135
    :cond_14
    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/restaurant/Restaurant$AdditionalContactDto;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 136
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/yopeso/lieferando/dialogs/RestaurantInfoDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/yopeso/lieferando/R$string;->owner:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/restaurant/Restaurant$AdditionalContactDto;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_2

    .line 153
    .end local v7    # "adc":Lcom/yopeso/lieferando/model/restaurant/Restaurant$AdditionalContactDto;
    .end local v11    # "email2":Ljava/lang/String;
    .end local v15    # "owner2":Ljava/lang/String;
    .restart local v8    # "app":Lcom/yopeso/lieferando/LieferandoApplication;
    .restart local v16    # "paymentSettings":Lcom/yopeso/lieferando/util/PaymentSettingsUtil;
    :cond_15
    const/16 v2, 0x8

    goto/16 :goto_3

    .line 154
    :cond_16
    const/16 v2, 0x8

    goto/16 :goto_4

    .line 155
    :cond_17
    const/16 v2, 0x8

    goto/16 :goto_5

    .line 156
    :cond_18
    const/16 v2, 0x8

    goto/16 :goto_6
.end method
