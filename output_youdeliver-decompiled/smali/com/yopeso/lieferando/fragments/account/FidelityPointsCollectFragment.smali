.class public Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;
.super Lcom/yopeso/lieferando/custom/LRFragment;
.source "FidelityPointsCollectFragment.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment$FidelityPointsListener;,
        Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment$SingleOrderListener;
    }
.end annotation


# static fields
.field private static final PHOTO_FRAGMENT:Ljava/lang/String; = "PhotoFragment"


# instance fields
.field private mActionsList:Landroid/widget/ExpandableListView;

.field private mAdapter:Lcom/yopeso/lieferando/adapters/FidelityActionAdapter;

.field private mFPFooterTextView:Landroid/widget/TextView;

.field private mFidelityActionModel:Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;

.field private mHeaderDescription:Landroid/widget/TextView;

.field private mHeaderTitle:Landroid/widget/TextView;

.field private mProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/yopeso/lieferando/custom/LRFragment;-><init>()V

    .line 47
    new-instance v0, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;

    invoke-direct {v0}, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;->mFidelityActionModel:Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;

    .line 51
    return-void
.end method

.method static synthetic access$0(Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;)Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;->mFidelityActionModel:Lcom/yopeso/lieferando/model/user/fidelity/FidelityPointsActionModel;

    return-object v0
.end method

.method static synthetic access$1(Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;->mHeaderTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;Lcom/yopeso/lieferando/adapters/FidelityActionAdapter;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;->mAdapter:Lcom/yopeso/lieferando/adapters/FidelityActionAdapter;

    return-void
.end method

.method static synthetic access$3(Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;)Landroid/widget/ExpandableListView;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;->mActionsList:Landroid/widget/ExpandableListView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;)Lcom/yopeso/lieferando/adapters/FidelityActionAdapter;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;->mAdapter:Lcom/yopeso/lieferando/adapters/FidelityActionAdapter;

    return-object v0
.end method

.method static synthetic access$5(Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;->dismissLoadingIndicator()V

    return-void
.end method

.method static synthetic access$6(Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;Lcom/android/volley/VolleyError;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;->handleNetworkError(Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method static synthetic access$7(Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method


# virtual methods
.method protected addFacebookConnect()V
    .locals 2

    .prologue
    .line 154
    sget v0, Lcom/yopeso/lieferando/R$id;->Content:I

    new-instance v1, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    invoke-direct {v1}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;->addNewFragment(ILandroid/support/v4/app/Fragment;)V

    .line 155
    return-void
.end method

.method protected addOrderRateFragment(Lcom/yopeso/lieferando/model/user/Order;)V
    .locals 2
    .param p1, "order"    # Lcom/yopeso/lieferando/model/user/Order;

    .prologue
    .line 150
    sget v0, Lcom/yopeso/lieferando/R$id;->Content:I

    invoke-static {p1}, Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;->newInstance(Lcom/yopeso/lieferando/model/user/Order;)Lcom/yopeso/lieferando/fragments/orders/OrderMainFragment;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;->addNewFragment(ILandroid/support/v4/app/Fragment;)V

    .line 151
    return-void
.end method

.method protected addPhotoFragment()V
    .locals 3

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "PhotoFragment"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment;

    .line 143
    .local v0, "pPF":Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment;
    if-nez v0, :cond_0

    .line 144
    new-instance v0, Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment;

    .end local v0    # "pPF":Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment;
    invoke-direct {v0}, Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment;-><init>()V

    .line 146
    .restart local v0    # "pPF":Lcom/yopeso/lieferando/fragments/account/ProfilePhotoFragment;
    :cond_0
    sget v1, Lcom/yopeso/lieferando/R$id;->Content:I

    const-string v2, "PhotoFragment"

    invoke-virtual {p0, v1, v0, v2}, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;->addNewFragment(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method protected getTitle()I
    .locals 1

    .prologue
    .line 55
    sget v0, Lcom/yopeso/lieferando/R$string;->open_actions_title:I

    return v0
.end method

.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 6
    .param p1, "parent"    # Landroid/widget/ExpandableListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "groupPosition"    # I
    .param p4, "childPosition"    # I
    .param p5, "id"    # J

    .prologue
    .line 159
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;->mAdapter:Lcom/yopeso/lieferando/adapters/FidelityActionAdapter;

    invoke-virtual {v2, p3, p4}, Lcom/yopeso/lieferando/adapters/FidelityActionAdapter;->getChild(II)Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;

    move-result-object v0

    .line 160
    .local v0, "action":Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RATE_HIGH"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 162
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;->getOrder()Lcom/yopeso/lieferando/model/user/fidelity/Order;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/fidelity/Order;->getHash()Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, "orderHash":Ljava/lang/String;
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 164
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    sget v4, Lcom/yopeso/lieferando/R$string;->pleaseWait:I

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 166
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v2

    new-instance v3, Lcom/yopeso/lieferando/net/requests/OrderGetRequest;

    new-instance v4, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment$SingleOrderListener;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment$SingleOrderListener;-><init>(Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment$SingleOrderListener;)V

    invoke-direct {v3, v1, v4}, Lcom/yopeso/lieferando/net/requests/OrderGetRequest;-><init>(Ljava/lang/String;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v3}, Lcom/yopeso/lieferando/net/requests/OrderGetRequest;->withAuth()Lcom/yopeso/lieferando/net/requests/base/JsonRequest;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 174
    .end local v1    # "orderHash":Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 168
    :cond_1
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ADD_ACCOUNT_IMAGE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 169
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;->addPhotoFragment()V

    goto :goto_0

    .line 170
    :cond_2
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FACEBOOK_CONNECT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;->addFacebookConnect()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 60
    sget v2, Lcom/yopeso/lieferando/R$layout;->fidelity_points_collect:I

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 61
    .local v1, "view":Landroid/view/View;
    sget v2, Lcom/yopeso/lieferando/R$id;->FpFooterDescription:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;->mFPFooterTextView:Landroid/widget/TextView;

    .line 62
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;->mFPFooterTextView:Landroid/widget/TextView;

    sget v3, Lcom/yopeso/lieferando/R$string;->fp_footer_description:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 63
    sget v2, Lcom/yopeso/lieferando/R$id;->HeaderPoints:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;->mHeaderTitle:Landroid/widget/TextView;

    .line 64
    sget v2, Lcom/yopeso/lieferando/R$id;->HeaderDescription:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;->mHeaderDescription:Landroid/widget/TextView;

    .line 66
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v0

    .line 67
    .local v0, "userData":Lcom/yopeso/lieferando/model/user/UserData;
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;->mHeaderDescription:Landroid/widget/TextView;

    sget v3, Lcom/yopeso/lieferando/R$string;->open_points_details:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/UserData;->getFidelityPoints()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 70
    sget v2, Lcom/yopeso/lieferando/R$id;->PointListView:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ExpandableListView;

    iput-object v2, p0, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;->mActionsList:Landroid/widget/ExpandableListView;

    .line 71
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;->mActionsList:Landroid/widget/ExpandableListView;

    invoke-virtual {v2, p0}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 72
    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;->mActionsList:Landroid/widget/ExpandableListView;

    invoke-virtual {v2, p0}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 74
    return-object v1
.end method

.method public onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 1
    .param p1, "parent"    # Landroid/widget/ExpandableListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "groupPosition"    # I
    .param p4, "id"    # J

    .prologue
    .line 180
    const/4 v0, 0x1

    return v0
.end method

.method public onStart()V
    .locals 5

    .prologue
    .line 79
    invoke-super {p0}, Lcom/yopeso/lieferando/custom/LRFragment;->onStart()V

    .line 80
    sget v0, Lcom/yopeso/lieferando/R$string;->pleaseWait:I

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;->showLoadingIndicator(I)V

    .line 81
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/net/requests/FidelityRequest;

    const/4 v2, 0x1

    new-instance v3, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment$FidelityPointsListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment$FidelityPointsListener;-><init>(Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment;Lcom/yopeso/lieferando/fragments/account/FidelityPointsCollectFragment$FidelityPointsListener;)V

    invoke-direct {v1, v2, v3}, Lcom/yopeso/lieferando/net/requests/FidelityRequest;-><init>(ZLcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v1}, Lcom/yopeso/lieferando/net/requests/FidelityRequest;->withAuth()Lcom/yopeso/lieferando/net/requests/base/JsonRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 82
    return-void
.end method
