.class public Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;
.super Lcom/yopeso/lieferando/custom/LRFragment;
.source "MainFidelityPointsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment$FidelityPointsListener;,
        Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment$FutureFidelityPointsListener;,
        Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment$SingleOrderListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yopeso/lieferando/custom/LRFragment;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
.field private static final PHOTO_FRAGMENT:Ljava/lang/String; = "PhotoFragment"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private bonusShopB:Landroid/widget/LinearLayout;

.field private fidelity_pointsTV:Landroid/widget/TextView;

.field private futurePointListView:Landroid/widget/ListView;

.field private mFPFooterTextView:Landroid/widget/TextView;

.field private mFidelityActionModel:Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;

.field private mFidelityPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;",
            ">;"
        }
    .end annotation
.end field

.field private mFidelityPointsAdapter:Lcom/yopeso/lieferando/adapters/MainFidelityPointsAdapter;

.field private mFidelityPointsFutureAdapter:Lcom/yopeso/lieferando/adapters/FidelityPointsFutureAdapter;

.field private mHeaderOpenPoints:Landroid/widget/TextView;

.field private mListView:Landroid/widget/ListView;

.field private mOpenPoints:I

.field private noFidelityRL:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const-class v0, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/yopeso/lieferando/custom/LRFragment;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->mOpenPoints:I

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->mFidelityPoints:Ljava/util/ArrayList;

    .line 77
    new-instance v0, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;

    invoke-direct {v0}, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->mFidelityActionModel:Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;

    .line 82
    return-void
.end method

.method static synthetic access$0(Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->mFidelityPoints:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;)Lcom/yopeso/lieferando/adapters/MainFidelityPointsAdapter;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->mFidelityPointsAdapter:Lcom/yopeso/lieferando/adapters/MainFidelityPointsAdapter;

    return-object v0
.end method

.method static synthetic access$2(Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->dismissLoadingIndicator()V

    return-void
.end method

.method static synthetic access$3(Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->noFidelityRL:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$4(Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;Lcom/android/volley/VolleyError;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->handleNetworkError(Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method static synthetic access$6(Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;)Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->mFidelityActionModel:Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;

    return-object v0
.end method

.method static synthetic access$7(Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;)Lcom/yopeso/lieferando/adapters/FidelityPointsFutureAdapter;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->mFidelityPointsFutureAdapter:Lcom/yopeso/lieferando/adapters/FidelityPointsFutureAdapter;

    return-object v0
.end method

.method private displayOpenPointsHeader()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 253
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->mHeaderOpenPoints:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$string;->fp_can_be_achieved:I

    new-array v3, v6, [Ljava/lang/Object;

    iget v4, p0, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->mOpenPoints:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    iget v0, p0, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->mOpenPoints:I

    if-lez v0, :cond_0

    .line 255
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->FidelityPointsCollect:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 259
    :goto_0
    return-void

    .line 257
    :cond_0
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$id;->FidelityPointsCollect:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method public static getBonusShopUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 90
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getToken()Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, "t":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 92
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 96
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getToken()Ljava/lang/String;

    move-result-object v3

    const-string v4, "utf-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 101
    :goto_0
    const/4 v2, 0x0

    .line 102
    .local v2, "text":Ljava/lang/String;
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v3

    invoke-interface {v3}, Lcom/yopeso/lieferando/net/config/IConfig;->isLive()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 103
    sget v3, Lcom/yopeso/lieferando/R$string;->premiumShop_url:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v1, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 108
    :goto_1
    return-object v2

    .line 97
    .end local v2    # "text":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 106
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "text":Ljava/lang/String;
    :cond_1
    sget v3, Lcom/yopeso/lieferando/R$string;->premiumShop_url_stage:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v1, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method


# virtual methods
.method protected addFacebookConnect()V
    .locals 4

    .prologue
    .line 374
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/yopeso/lieferando/util/DeviceUtils;->isHoneycombTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    sget v0, Lcom/yopeso/lieferando/R$id;->RightPane:I

    new-instance v1, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    invoke-direct {v1}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->addNewFragmentNoAnimation(ILandroid/support/v4/app/Fragment;ZLjava/lang/String;)V

    .line 380
    :goto_0
    return-void

    .line 378
    :cond_0
    sget v0, Lcom/yopeso/lieferando/R$id;->Content:I

    new-instance v1, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    invoke-direct {v1}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->addNewFragment(ILandroid/support/v4/app/Fragment;)V

    goto :goto_0
.end method

.method protected addOrderRateFragment(Lcom/yopeso/lieferando/model/user/Order;)V
    .locals 4
    .param p1, "order"    # Lcom/yopeso/lieferando/model/user/Order;

    .prologue
    .line 364
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/yopeso/lieferando/util/DeviceUtils;->isHoneycombTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    sget v0, Lcom/yopeso/lieferando/R$id;->RightPane:I

    invoke-static {p1}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->newInstance(Lcom/yopeso/lieferando/model/user/Order;)Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->addNewFragmentNoAnimation(ILandroid/support/v4/app/Fragment;ZLjava/lang/String;)V

    .line 371
    :goto_0
    return-void

    .line 368
    :cond_0
    sget v0, Lcom/yopeso/lieferando/R$id;->Content:I

    invoke-static {p1}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->newInstance(Lcom/yopeso/lieferando/model/user/Order;)Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->addNewFragment(ILandroid/support/v4/app/Fragment;)V

    goto :goto_0
.end method

.method protected addPhotoFragment()V
    .locals 5

    .prologue
    .line 351
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/yopeso/lieferando/util/DeviceUtils;->isHoneycombTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 352
    sget v1, Lcom/yopeso/lieferando/R$id;->RightPane:I

    new-instance v2, Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment;

    invoke-direct {v2}, Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment;-><init>()V

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->addNewFragmentNoAnimation(ILandroid/support/v4/app/Fragment;ZLjava/lang/String;)V

    .line 361
    :goto_0
    return-void

    .line 355
    :cond_0
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "PhotoFragment"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment;

    .line 356
    .local v0, "pPF":Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment;
    if-nez v0, :cond_1

    .line 357
    new-instance v0, Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment;

    .end local v0    # "pPF":Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment;
    invoke-direct {v0}, Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment;-><init>()V

    .line 359
    .restart local v0    # "pPF":Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment;
    :cond_1
    sget v1, Lcom/yopeso/lieferando/R$id;->Content:I

    const-string v2, "PhotoFragment"

    invoke-virtual {p0, v1, v0, v2}, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->addNewFragment(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected getTitle()I
    .locals 1

    .prologue
    .line 86
    sget v0, Lcom/yopeso/lieferando/R$string;->main_points:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 267
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 268
    .local v0, "id":I
    sget v1, Lcom/yopeso/lieferando/R$id;->FidelityPointsCollect:I

    if-ne v0, v1, :cond_0

    .line 269
    sget v1, Lcom/yopeso/lieferando/R$id;->Content:I

    new-instance v2, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;

    invoke-direct {v2}, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->addNewFragment(ILandroid/support/v4/app/Fragment;)V

    .line 271
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 113
    sget v4, Lcom/yopeso/lieferando/R$layout;->main_points_fragment:I

    invoke-virtual {p1, v4, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 114
    .local v3, "view":Landroid/view/View;
    sget v4, Lcom/yopeso/lieferando/R$id;->FidelityPointsCollect:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    sget v4, Lcom/yopeso/lieferando/R$id;->FpFooterDescription:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->mFPFooterTextView:Landroid/widget/TextView;

    .line 116
    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->mFPFooterTextView:Landroid/widget/TextView;

    sget v5, Lcom/yopeso/lieferando/R$string;->fp_footer_description:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 118
    sget v4, Lcom/yopeso/lieferando/R$id;->viewTextPointMessage:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->mHeaderOpenPoints:Landroid/widget/TextView;

    .line 122
    sget v4, Lcom/yopeso/lieferando/R$id;->viewTextPremiumShop:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 124
    .local v1, "premiumShop":Landroid/widget/TextView;
    sget v4, Lcom/yopeso/lieferando/R$string;->premiumShop:I

    invoke-virtual {p0, v4}, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->getBonusShopUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 129
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v2

    .line 130
    .local v2, "userData":Lcom/yopeso/lieferando/model/user/UserData;
    if-nez v2, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 223
    :goto_0
    return-object v3

    .line 135
    :cond_0
    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/UserData;->getFidelityPoints()I

    move-result v0

    .line 137
    .local v0, "points":I
    const/4 v4, 0x5

    if-ge v0, v4, :cond_1

    if-eqz v0, :cond_1

    .line 138
    sget v4, Lcom/yopeso/lieferando/R$id;->viewTextPointCount:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/UserData;->getFidelityPoints()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/yopeso/lieferando/R$string;->main_points:I

    invoke-virtual {p0, v6}, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    :goto_1
    sget v4, Lcom/yopeso/lieferando/R$id;->PointListView:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->mListView:Landroid/widget/ListView;

    .line 144
    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->mListView:Landroid/widget/ListView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 145
    new-instance v4, Lcom/yopeso/lieferando/adapters/MainFidelityPointsAdapter;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    sget v6, Lcom/yopeso/lieferando/R$layout;->fidelity_points_cell:I

    iget-object v7, p0, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->mFidelityPoints:Ljava/util/ArrayList;

    invoke-direct {v4, v5, v6, v7}, Lcom/yopeso/lieferando/adapters/MainFidelityPointsAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v4, p0, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->mFidelityPointsAdapter:Lcom/yopeso/lieferando/adapters/MainFidelityPointsAdapter;

    .line 146
    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->mFidelityPointsAdapter:Lcom/yopeso/lieferando/adapters/MainFidelityPointsAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 150
    sget v4, Lcom/yopeso/lieferando/R$id;->fidelity_pointsTV:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->fidelity_pointsTV:Landroid/widget/TextView;

    .line 151
    sget v4, Lcom/yopeso/lieferando/R$id;->bonusShopB:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->bonusShopB:Landroid/widget/LinearLayout;

    .line 152
    sget v4, Lcom/yopeso/lieferando/R$id;->FuturePointListView:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->futurePointListView:Landroid/widget/ListView;

    .line 153
    sget v4, Lcom/yopeso/lieferando/R$id;->noFidelityRL:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->noFidelityRL:Landroid/widget/RelativeLayout;

    .line 155
    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->fidelity_pointsTV:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->bonusShopB:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment$1;

    invoke-direct {v5, p0}, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment$1;-><init>(Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    new-instance v4, Lcom/yopeso/lieferando/adapters/FidelityPointsFutureAdapter;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    sget v6, Lcom/yopeso/lieferando/R$layout;->fidelity_points_cell:I

    iget-object v7, p0, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->mFidelityActionModel:Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;

    invoke-direct {v4, v5, v6, v7}, Lcom/yopeso/lieferando/adapters/FidelityPointsFutureAdapter;-><init>(Landroid/content/Context;ILcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;)V

    iput-object v4, p0, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->mFidelityPointsFutureAdapter:Lcom/yopeso/lieferando/adapters/FidelityPointsFutureAdapter;

    .line 166
    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->futurePointListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->mFidelityPointsFutureAdapter:Lcom/yopeso/lieferando/adapters/FidelityPointsFutureAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 167
    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->futurePointListView:Landroid/widget/ListView;

    new-instance v5, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment$2;

    invoke-direct {v5, p0}, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment$2;-><init>(Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 175
    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->futurePointListView:Landroid/widget/ListView;

    new-instance v5, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment$3;

    invoke-direct {v5, p0}, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment$3;-><init>(Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 197
    iget-object v4, p0, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->mListView:Landroid/widget/ListView;

    new-instance v5, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment$4;

    invoke-direct {v5, p0}, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment$4;-><init>(Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_0

    .line 140
    :cond_1
    sget v4, Lcom/yopeso/lieferando/R$id;->viewTextPointCount:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/UserData;->getFidelityPoints()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/yopeso/lieferando/R$string;->main_point:I

    invoke-virtual {p0, v6}, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method public onEvent(Lcom/yopeso/lieferando/events/AuthenticationEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/yopeso/lieferando/events/AuthenticationEvent;

    .prologue
    .line 412
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->isLoggedIn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 414
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 416
    :cond_0
    return-void
.end method

.method public onFidelityPointSelected(Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;)V
    .locals 5
    .param p1, "action"    # Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;

    .prologue
    .line 383
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RATE_HIGH"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 384
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;->getOrder()Lcom/yopeso/lieferando/model/user/fidelity/Order;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/fidelity/Order;->getHash()Ljava/lang/String;

    move-result-object v0

    .line 385
    .local v0, "orderHash":Ljava/lang/String;
    sget v1, Lcom/yopeso/lieferando/R$string;->pleaseWait:I

    invoke-virtual {p0, v1}, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->showLoadingIndicator(I)V

    .line 386
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    new-instance v2, Lcom/yopeso/lieferando/net/requests/OrderGetRequest;

    new-instance v3, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment$SingleOrderListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment$SingleOrderListener;-><init>(Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment$SingleOrderListener;)V

    invoke-direct {v2, v0, v3}, Lcom/yopeso/lieferando/net/requests/OrderGetRequest;-><init>(Ljava/lang/String;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v2}, Lcom/yopeso/lieferando/net/requests/OrderGetRequest;->withAuth()Lcom/yopeso/lieferando/net/requests/base/JsonRequest;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 394
    .end local v0    # "orderHash":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 388
    :cond_1
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ADD_ACCOUNT_IMAGE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 389
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->addPhotoFragment()V

    goto :goto_0

    .line 390
    :cond_2
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FACEBOOK_CONNECT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 391
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->addFacebookConnect()V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 263
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 423
    invoke-super {p0}, Lcom/yopeso/lieferando/custom/LRFragment;->onPause()V

    .line 424
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 427
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 245
    invoke-super {p0}, Lcom/yopeso/lieferando/custom/LRFragment;->onResume()V

    .line 246
    invoke-direct {p0}, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->displayOpenPointsHeader()V

    .line 247
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 250
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 228
    invoke-super {p0}, Lcom/yopeso/lieferando/custom/LRFragment;->onStart()V

    .line 229
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->mFidelityPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 230
    sget v0, Lcom/yopeso/lieferando/R$string;->pleaseWait:I

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->showLoadingIndicator(I)V

    .line 231
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/net/requests/FidelityRequest;

    const/4 v2, 0x0

    new-instance v3, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment$FidelityPointsListener;

    invoke-direct {v3, p0, v4}, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment$FidelityPointsListener;-><init>(Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment$FidelityPointsListener;)V

    invoke-direct {v1, v2, v3}, Lcom/yopeso/lieferando/net/requests/FidelityRequest;-><init>(ZLcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v1}, Lcom/yopeso/lieferando/net/requests/FidelityRequest;->withAuth()Lcom/yopeso/lieferando/net/requests/base/JsonRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 234
    :cond_0
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/net/requests/FidelityRequest;

    const/4 v2, 0x1

    new-instance v3, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment$FutureFidelityPointsListener;

    invoke-direct {v3, p0, v4}, Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment$FutureFidelityPointsListener;-><init>(Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment;Lcom/yopeso/lieferando/fragments/account/MainFidelityPointsFragment$FutureFidelityPointsListener;)V

    invoke-direct {v1, v2, v3}, Lcom/yopeso/lieferando/net/requests/FidelityRequest;-><init>(ZLcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v1}, Lcom/yopeso/lieferando/net/requests/FidelityRequest;->withAuth()Lcom/yopeso/lieferando/net/requests/base/JsonRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 241
    return-void
.end method
