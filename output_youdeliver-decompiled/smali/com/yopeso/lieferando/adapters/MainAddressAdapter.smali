.class public Lcom/yopeso/lieferando/adapters/MainAddressAdapter;
.super Landroid/widget/BaseAdapter;
.source "MainAddressAdapter.java"


# static fields
.field private static final VIEW_TYPE_ADDRESS:I


# instance fields
.field private mAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yopeso/lieferando/model/user/Location;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/yopeso/lieferando/callback/MainAddressesCallBack;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 34
    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/adapters/MainAddressAdapter;->mContext:Landroid/content/Context;

    .line 29
    return-void
.end method

.method static synthetic access$1(Lcom/yopeso/lieferando/adapters/MainAddressAdapter;)Lcom/yopeso/lieferando/callback/MainAddressesCallBack;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/MainAddressAdapter;->mListener:Lcom/yopeso/lieferando/callback/MainAddressesCallBack;

    return-object v0
.end method

.method private swipePrimaryLocationToTheTopOfList()V
    .locals 4

    .prologue
    .line 187
    const/4 v1, 0x0

    .line 188
    .local v1, "primaryPosition":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/MainAddressAdapter;->mAddresses:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 194
    :goto_1
    if-eqz v1, :cond_0

    .line 195
    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/MainAddressAdapter;->mAddresses:Ljava/util/List;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 197
    :cond_0
    return-void

    .line 189
    :cond_1
    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/MainAddressAdapter;->mAddresses:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/Location;->isPrimary()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 190
    move v1, v0

    .line 191
    goto :goto_1

    .line 188
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/MainAddressAdapter;->mAddresses:Ljava/util/List;

    if-nez v0, :cond_0

    .line 40
    const/4 v0, 0x0

    .line 42
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/MainAddressAdapter;->mAddresses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Lcom/yopeso/lieferando/model/user/Location;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 47
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/MainAddressAdapter;->mAddresses:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/user/Location;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/adapters/MainAddressAdapter;->getItem(I)Lcom/yopeso/lieferando/model/user/Location;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 52
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x0

    .line 75
    if-nez p2, :cond_0

    .line 76
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 77
    .local v3, "li":Landroid/view/LayoutInflater;
    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/adapters/MainAddressAdapter;->getItemViewType(I)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 84
    .end local v3    # "li":Landroid/view/LayoutInflater;
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/adapters/MainAddressAdapter;->getItemViewType(I)I

    move-result v6

    packed-switch v6, :pswitch_data_1

    .line 169
    :goto_1
    return-object p2

    .line 79
    .restart local v3    # "li":Landroid/view/LayoutInflater;
    :pswitch_0
    sget v6, Lcom/yopeso/lieferando/R$layout;->address_cell:I

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 86
    .end local v3    # "li":Landroid/view/LayoutInflater;
    :pswitch_1
    iget-object v6, p0, Lcom/yopeso/lieferando/adapters/MainAddressAdapter;->mAddresses:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yopeso/lieferando/model/user/Location;

    .line 87
    .local v4, "location":Lcom/yopeso/lieferando/model/user/Location;
    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/user/Location;->getCompany()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/user/Location;->getCompany()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 88
    sget v6, Lcom/yopeso/lieferando/R$id;->AddressCompany:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 89
    .local v1, "company":Landroid/widget/TextView;
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/yopeso/lieferando/adapters/MainAddressAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/yopeso/lieferando/R$string;->companyLabel:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/user/Location;->getCompany()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    .end local v1    # "company":Landroid/widget/TextView;
    :goto_2
    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/user/Location;->getName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/user/Location;->getPreName()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_4

    .line 96
    :cond_1
    sget v6, Lcom/yopeso/lieferando/R$id;->AddressName:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/yopeso/lieferando/model/user/UserData;->getPreName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/yopeso/lieferando/model/user/UserData;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    :goto_3
    sget v6, Lcom/yopeso/lieferando/R$id;->AddressStreetAndNumber:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 102
    .local v5, "sn":Landroid/widget/TextView;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/user/Location;->getStreet()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/user/Location;->getHnr()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    sget v6, Lcom/yopeso/lieferando/R$id;->AddressPostalcodeAndCity:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 104
    .local v0, "city":Landroid/widget/TextView;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/user/Location;->getPlz()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/user/Location;->getCityName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/user/Location;->getEtage()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/user/Location;->getEtage()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 106
    sget v6, Lcom/yopeso/lieferando/R$id;->AddressFloor:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 107
    sget v6, Lcom/yopeso/lieferando/R$id;->AddressFloor:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/yopeso/lieferando/adapters/MainAddressAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/yopeso/lieferando/R$string;->addressFloor:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/user/Location;->getEtage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    :goto_4
    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/user/Location;->getComment()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/user/Location;->getComment()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 112
    sget v6, Lcom/yopeso/lieferando/R$id;->AddressSpecialNote:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 113
    sget v6, Lcom/yopeso/lieferando/R$id;->AddressSpecialNote:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/yopeso/lieferando/adapters/MainAddressAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/yopeso/lieferando/R$string;->specialNotes:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/user/Location;->getComment()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    :goto_5
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v6

    invoke-interface {v6}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v6

    if-nez v6, :cond_2

    .line 120
    sget v6, Lcom/yopeso/lieferando/R$id;->AddressBottomButton:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v7

    invoke-virtual {v7}, Lcom/yopeso/lieferando/model/SettingsContent;->getDynamicButtonFilter()Landroid/graphics/PorterDuffColorFilter;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 124
    :cond_2
    sget v6, Lcom/yopeso/lieferando/R$id;->AddressBottomButton:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    new-instance v7, Lcom/yopeso/lieferando/adapters/MainAddressAdapter$1;

    invoke-direct {v7, p0, v4}, Lcom/yopeso/lieferando/adapters/MainAddressAdapter$1;-><init>(Lcom/yopeso/lieferando/adapters/MainAddressAdapter;Lcom/yopeso/lieferando/model/user/Location;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    sget v6, Lcom/yopeso/lieferando/R$id;->AddAsDefaultAddressButton:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 132
    .local v2, "houseIcon":Landroid/widget/ImageView;
    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/user/Location;->isPrimary()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 133
    sget v6, Lcom/yopeso/lieferando/R$drawable;->acc_address_blue:I

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 138
    :goto_6
    new-instance v6, Lcom/yopeso/lieferando/adapters/MainAddressAdapter$2;

    invoke-direct {v6, p0, p1}, Lcom/yopeso/lieferando/adapters/MainAddressAdapter$2;-><init>(Lcom/yopeso/lieferando/adapters/MainAddressAdapter;I)V

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    sget v6, Lcom/yopeso/lieferando/R$id;->DeleteAddressIV:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    new-instance v7, Lcom/yopeso/lieferando/adapters/MainAddressAdapter$3;

    invoke-direct {v7, p0, p1}, Lcom/yopeso/lieferando/adapters/MainAddressAdapter$3;-><init>(Lcom/yopeso/lieferando/adapters/MainAddressAdapter;I)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    sget v6, Lcom/yopeso/lieferando/R$id;->EditAddressIV:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    new-instance v7, Lcom/yopeso/lieferando/adapters/MainAddressAdapter$4;

    invoke-direct {v7, p0, p1}, Lcom/yopeso/lieferando/adapters/MainAddressAdapter$4;-><init>(Lcom/yopeso/lieferando/adapters/MainAddressAdapter;I)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 92
    .end local v0    # "city":Landroid/widget/TextView;
    .end local v2    # "houseIcon":Landroid/widget/ImageView;
    .end local v5    # "sn":Landroid/widget/TextView;
    :cond_3
    sget v6, Lcom/yopeso/lieferando/R$id;->AddressCompany:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 98
    :cond_4
    sget v6, Lcom/yopeso/lieferando/R$id;->AddressName:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/user/Location;->getPreName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/user/Location;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 109
    .restart local v0    # "city":Landroid/widget/TextView;
    .restart local v5    # "sn":Landroid/widget/TextView;
    :cond_5
    sget v6, Lcom/yopeso/lieferando/R$id;->AddressFloor:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 115
    :cond_6
    sget v6, Lcom/yopeso/lieferando/R$id;->AddressSpecialNote:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 135
    .restart local v2    # "houseIcon":Landroid/widget/ImageView;
    :cond_7
    sget v6, Lcom/yopeso/lieferando/R$drawable;->acc_address:I

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_6

    .line 77
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 84
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 67
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/MainAddressAdapter;->mAddresses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 68
    const/4 v0, 0x0

    .line 70
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public removeAddress(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 173
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/MainAddressAdapter;->mAddresses:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 174
    invoke-virtual {p0}, Lcom/yopeso/lieferando/adapters/MainAddressAdapter;->notifyDataSetChanged()V

    .line 175
    return-void
.end method

.method public setListener(Lcom/yopeso/lieferando/callback/MainAddressesCallBack;)V
    .locals 0
    .param p1, "mListener"    # Lcom/yopeso/lieferando/callback/MainAddressesCallBack;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/yopeso/lieferando/adapters/MainAddressAdapter;->mListener:Lcom/yopeso/lieferando/callback/MainAddressesCallBack;

    .line 184
    return-void
.end method

.method public setmAddresses(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yopeso/lieferando/model/user/Location;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 178
    .local p1, "mAddresses":Ljava/util/List;, "Ljava/util/List<Lcom/yopeso/lieferando/model/user/Location;>;"
    iput-object p1, p0, Lcom/yopeso/lieferando/adapters/MainAddressAdapter;->mAddresses:Ljava/util/List;

    .line 179
    invoke-direct {p0}, Lcom/yopeso/lieferando/adapters/MainAddressAdapter;->swipePrimaryLocationToTheTopOfList()V

    .line 180
    return-void
.end method
