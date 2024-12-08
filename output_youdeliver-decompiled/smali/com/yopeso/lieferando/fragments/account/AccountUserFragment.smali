.class public Lcom/yopeso/lieferando/fragments/account/AccountUserFragment;
.super Lcom/yopeso/lieferando/custom/LRFragment;
.source "AccountUserFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "AccountUserFragment"


# instance fields
.field protected mPhoto:Landroid/widget/ImageView;

.field private mUserData:Lcom/yopeso/lieferando/model/user/UserData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/yopeso/lieferando/custom/LRFragment;-><init>()V

    .line 40
    return-void
.end method


# virtual methods
.method protected getTitle()I
    .locals 1

    .prologue
    .line 46
    sget v0, Lcom/yopeso/lieferando/R$string;->account:I

    return v0
.end method

.method protected loadUserPhoto()V
    .locals 4

    .prologue
    .line 129
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/account/AccountUserFragment;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    .line 130
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/AccountUserFragment;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/UserData;->getImgUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yopeso/lieferando/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/AccountUserFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getTagFactoryNoAnim()Lcom/novoda/imageloader/core/model/ImageTagFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/AccountUserFragment;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/UserData;->getImgUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/AccountUserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/yopeso/lieferando/util/ImageUtils;->getOptimizedUserImage(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/AccountUserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/novoda/imageloader/core/model/ImageTagFactory;->build(Ljava/lang/String;Landroid/content/Context;)Lcom/novoda/imageloader/core/model/ImageTag;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 132
    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getImageLoader()Lcom/novoda/imageloader/core/loader/Loader;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/AccountUserFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Lcom/novoda/imageloader/core/loader/Loader;->load(Landroid/widget/ImageView;)V

    .line 136
    :goto_0
    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/AccountUserFragment;->mPhoto:Landroid/widget/ImageView;

    sget v1, Lcom/yopeso/lieferando/R$drawable;->no_user_photo:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/yopeso/lieferando/custom/LRFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 85
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/AccountUserFragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 86
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/AccountUserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnClickListener;

    .line 88
    .local v0, "listener":Landroid/view/View$OnClickListener;
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/AccountUserFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    sget v2, Lcom/yopeso/lieferando/R$id;->MainHelp:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    sget v2, Lcom/yopeso/lieferando/R$id;->MainHow:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    sget v2, Lcom/yopeso/lieferando/R$id;->MainPropose:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    sget v2, Lcom/yopeso/lieferando/R$id;->MainApp:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    sget v2, Lcom/yopeso/lieferando/R$id;->MainOrders:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    sget v2, Lcom/yopeso/lieferando/R$id;->MainImpressions:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    sget v2, Lcom/yopeso/lieferando/R$id;->MainFavorits:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    sget v2, Lcom/yopeso/lieferando/R$id;->MainAccountButton:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    sget v2, Lcom/yopeso/lieferando/R$id;->MainAddresse:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    sget v2, Lcom/yopeso/lieferando/R$id;->MainPoints:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    sget v2, Lcom/yopeso/lieferando/R$id;->StempList:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v4, 0x8

    .line 51
    sget v1, Lcom/yopeso/lieferando/R$layout;->accout_user_layout:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 52
    .local v0, "view":Landroid/view/View;
    sget v1, Lcom/yopeso/lieferando/R$id;->AccountPhoto:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/account/AccountUserFragment;->mPhoto:Landroid/widget/ImageView;

    .line 53
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v1

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/account/AccountUserFragment;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    .line 54
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isTakeaway()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/AccountUserFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/SettingsContent;->isFidelityPointsActive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    :cond_0
    sget v1, Lcom/yopeso/lieferando/R$id;->totalFidelityPoints:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/account/AccountUserFragment;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/user/UserData;->getFidelityPoints()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    :cond_1
    sget v1, Lcom/yopeso/lieferando/R$id;->totalOrders:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/account/AccountUserFragment;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/user/UserData;->getOrdersCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    sget v1, Lcom/yopeso/lieferando/R$id;->rateableOrders:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/account/AccountUserFragment;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/user/UserData;->getRateable()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    sget v1, Lcom/yopeso/lieferando/R$id;->totalFavourites:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/yopeso/lieferando/fragments/account/AccountUserFragment;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/user/UserData;->getFavouriteRestaurantUrls()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/yopeso/lieferando/net/config/IConfig;->isTakeaway()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 65
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/AccountUserFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/SettingsContent;->isFidelityPointsActive()Z

    move-result v1

    if-nez v1, :cond_2

    .line 67
    sget v1, Lcom/yopeso/lieferando/R$id;->MainPoints:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 69
    sget v1, Lcom/yopeso/lieferando/R$id;->dividerHeader2:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 71
    :cond_2
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/AccountUserFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/SettingsContent;->isStampcardActive()Z

    move-result v1

    if-nez v1, :cond_3

    .line 73
    sget v1, Lcom/yopeso/lieferando/R$id;->StempList:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 75
    sget v1, Lcom/yopeso/lieferando/R$id;->dividerHeader1:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 79
    :cond_3
    return-object v0
.end method

.method public onEvent(Lcom/yopeso/lieferando/events/UserDataUpdatedEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/yopeso/lieferando/events/UserDataUpdatedEvent;

    .prologue
    .line 139
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/account/AccountUserFragment;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    .line 140
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/AccountUserFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->totalFidelityPoints:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/AccountUserFragment;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/UserData;->getFidelityPoints()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/AccountUserFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->totalOrders:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/AccountUserFragment;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/UserData;->getOrdersCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/AccountUserFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->totalFavourites:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/AccountUserFragment;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/UserData;->getFavouriteRestaurantUrls()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/AccountUserFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->rateableOrders:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/AccountUserFragment;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/UserData;->getRateable()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    const-string v0, "AccountUserFragment"

    const-string v1, "onEvent(UserDataUpdatedEvent event) "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 104
    invoke-super {p0}, Lcom/yopeso/lieferando/custom/LRFragment;->onResume()V

    .line 105
    const-string v0, "AccountUserFragment"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/AccountUserFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->user_full_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/UserData;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/AccountUserFragment;->loadUserPhoto()V

    .line 109
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 113
    invoke-super {p0}, Lcom/yopeso/lieferando/custom/LRFragment;->onStart()V

    .line 114
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 117
    :cond_0
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/AccountUserFragment;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/net/requests/StatsRequest;

    new-instance v2, Lcom/yopeso/lieferando/net/listeners/StatsListener;

    invoke-direct {v2}, Lcom/yopeso/lieferando/net/listeners/StatsListener;-><init>()V

    invoke-direct {v1, v2}, Lcom/yopeso/lieferando/net/requests/StatsRequest;-><init>(Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v1}, Lcom/yopeso/lieferando/net/requests/StatsRequest;->withAuth()Lcom/yopeso/lieferando/net/requests/base/JsonRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 118
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 122
    invoke-super {p0}, Lcom/yopeso/lieferando/custom/LRFragment;->onStop()V

    .line 123
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 126
    :cond_0
    return-void
.end method

.method public updateFavouriteCount()V
    .locals 3

    .prologue
    .line 148
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/account/AccountUserFragment;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    .line 149
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/AccountUserFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->totalFavourites:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/AccountUserFragment;->mUserData:Lcom/yopeso/lieferando/model/user/UserData;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/UserData;->getFavouriteRestaurantUrls()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    return-void
.end method
