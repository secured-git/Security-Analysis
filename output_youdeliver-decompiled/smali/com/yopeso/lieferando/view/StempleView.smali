.class public Lcom/yopeso/lieferando/view/StempleView;
.super Landroid/widget/LinearLayout;
.source "StempleView.java"


# instance fields
.field private mCallback:Lcom/yopeso/lieferando/callback/StempelSelectedCallback;

.field private mContext:Landroid/content/Context;

.field private mListlayout:Landroid/widget/LinearLayout;

.field protected mStamps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/Stamp;",
            ">;"
        }
    .end annotation
.end field

.field private mStempelMsg:Landroid/widget/TextView;

.field private mStempleLayout:Landroid/widget/LinearLayout;

.field private mViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/view/StempleElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/view/StempleView;->mStamps:Ljava/util/ArrayList;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/view/StempleView;->mViews:Ljava/util/ArrayList;

    .line 44
    iput-object p1, p0, Lcom/yopeso/lieferando/view/StempleView;->mContext:Landroid/content/Context;

    .line 45
    invoke-direct {p0}, Lcom/yopeso/lieferando/view/StempleView;->createView()V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/view/StempleView;->mStamps:Ljava/util/ArrayList;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/view/StempleView;->mViews:Ljava/util/ArrayList;

    .line 38
    iput-object p1, p0, Lcom/yopeso/lieferando/view/StempleView;->mContext:Landroid/content/Context;

    .line 39
    invoke-direct {p0}, Lcom/yopeso/lieferando/view/StempleView;->createView()V

    .line 40
    return-void
.end method

.method private addDiscounts(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V
    .locals 4
    .param p1, "r"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .prologue
    .line 132
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Stamp;->getmDiscounts()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Stamp;->getmDiscounts()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 133
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Stamp;->getmDiscounts()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 147
    :cond_1
    return-void

    .line 133
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/Discount;

    .line 135
    .local v0, "discount":Lcom/yopeso/lieferando/model/Discount;
    sget-object v3, Lcom/yopeso/lieferando/LieferandoApplication;->sCurrentDate:Ljava/util/Date;

    invoke-virtual {v0, v3}, Lcom/yopeso/lieferando/model/Discount;->isActive(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 136
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->isLoggedIn()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/Discount;->ismNewCustomer()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v3

    invoke-static {v3}, Lcom/yopeso/lieferando/view/StempleView;->hasOrderInRestaurant(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 140
    :cond_3
    new-instance v1, Lcom/yopeso/lieferando/model/Stamp;

    invoke-direct {v1}, Lcom/yopeso/lieferando/model/Stamp;-><init>()V

    .line 141
    .local v1, "empty":Lcom/yopeso/lieferando/model/Stamp;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/yopeso/lieferando/model/Stamp;->setDiscount(Z)V

    .line 142
    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/Stamp;->getmDiscounts()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    iget-object v3, p0, Lcom/yopeso/lieferando/view/StempleView;->mStamps:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private createView()V
    .locals 3

    .prologue
    .line 53
    iget-object v1, p0, Lcom/yopeso/lieferando/view/StempleView;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 54
    .local v0, "li":Landroid/view/LayoutInflater;
    sget v1, Lcom/yopeso/lieferando/R$layout;->stempel_checkout_layout:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 55
    sget v1, Lcom/yopeso/lieferando/R$id;->stamle_msg:I

    invoke-virtual {p0, v1}, Lcom/yopeso/lieferando/view/StempleView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/yopeso/lieferando/view/StempleView;->mStempelMsg:Landroid/widget/TextView;

    .line 56
    sget v1, Lcom/yopeso/lieferando/R$id;->StempelLayout:I

    invoke-virtual {p0, v1}, Lcom/yopeso/lieferando/view/StempleView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/yopeso/lieferando/view/StempleView;->mStempleLayout:Landroid/widget/LinearLayout;

    .line 57
    sget v1, Lcom/yopeso/lieferando/R$id;->StempelListLayout:I

    invoke-virtual {p0, v1}, Lcom/yopeso/lieferando/view/StempleView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/yopeso/lieferando/view/StempleView;->mListlayout:Landroid/widget/LinearLayout;

    .line 59
    return-void
.end method

.method private enablePartnerRebateCB(Lcom/yopeso/lieferando/view/StempleElement;Lcom/yopeso/lieferando/model/cart/ShoppingCart;)Z
    .locals 7
    .param p1, "se"    # Lcom/yopeso/lieferando/view/StempleElement;
    .param p2, "mCart"    # Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 276
    invoke-virtual {p1}, Lcom/yopeso/lieferando/view/StempleElement;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Stamp;->getFirstDiscount()Lcom/yopeso/lieferando/model/Discount;

    move-result-object v0

    .line 277
    .local v0, "discount":Lcom/yopeso/lieferando/model/Discount;
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/Discount;->getmKind()I

    move-result v2

    if-ne v2, v3, :cond_2

    .line 278
    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getOrderCostReached()I

    move-result v2

    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getMinCost()I

    move-result v5

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/Discount;->getmRabatt()I

    move-result v6

    add-int/2addr v5, v6

    if-lt v2, v5, :cond_1

    .line 283
    :cond_0
    :goto_0
    return v3

    :cond_1
    move v3, v4

    .line 278
    goto :goto_0

    .line 282
    :cond_2
    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getMinCost()I

    move-result v2

    mul-int/lit8 v5, v2, 0x64

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/Discount;->getmRabatt()I

    move-result v2

    rsub-int/lit8 v2, v2, 0x64

    if-nez v2, :cond_3

    move v2, v3

    :goto_1
    div-int v1, v5, v2

    .line 283
    .local v1, "newMinCost":I
    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getOrderCostReached()I

    move-result v2

    if-ge v2, v1, :cond_0

    move v3, v4

    goto :goto_0

    .line 282
    .end local v1    # "newMinCost":I
    :cond_3
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/Discount;->getmRabatt()I

    move-result v2

    rsub-int/lit8 v2, v2, 0x64

    goto :goto_1
.end method

.method private static hasOrderInRestaurant(I)Z
    .locals 4
    .param p0, "restaurant_id"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 150
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 151
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/UserData;->getmRestaurantOrders()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 152
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/UserData;->getmRestaurantOrders()Ljava/util/List;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/yopeso/lieferando/model/user/UserData;->getStampsForRestaurant(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 158
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 152
    goto :goto_0

    .line 155
    :cond_2
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/yopeso/lieferando/model/user/UserData;->getStampsForRestaurant(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public clearStampsView()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/yopeso/lieferando/view/StempleView;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 65
    iget-object v0, p0, Lcom/yopeso/lieferando/view/StempleView;->mStamps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 66
    iget-object v0, p0, Lcom/yopeso/lieferando/view/StempleView;->mListlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 67
    return-void
.end method

.method public disableStample(Ljava/lang/String;ZLcom/yopeso/lieferando/model/cart/ShoppingCart;)V
    .locals 9
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "exceptPartnerRebate"    # Z
    .param p3, "mCart"    # Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 223
    iget-object v2, p0, Lcom/yopeso/lieferando/view/StempleView;->mStempleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 224
    iget-object v2, p0, Lcom/yopeso/lieferando/view/StempleView;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 260
    iget-object v2, p0, Lcom/yopeso/lieferando/view/StempleView;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/LieferandoApplication;

    .line 261
    .local v0, "app":Lcom/yopeso/lieferando/LieferandoApplication;
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/yopeso/lieferando/net/config/IConfig;->isTakeaway()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/SettingsContent;->isStampcardActive()Z

    move-result v2

    if-nez v2, :cond_7

    .line 263
    iget-object v2, p0, Lcom/yopeso/lieferando/view/StempleView;->mStempelMsg:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    :cond_1
    :goto_1
    return-void

    .line 224
    .end local v0    # "app":Lcom/yopeso/lieferando/LieferandoApplication;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yopeso/lieferando/view/StempleElement;

    .line 226
    .local v1, "se":Lcom/yopeso/lieferando/view/StempleElement;
    invoke-virtual {v1}, Lcom/yopeso/lieferando/view/StempleElement;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/Stamp;->isDiscount()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 227
    new-array v3, v8, [I

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/StempleView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/yopeso/lieferando/R$color;->text_grey:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    aput v4, v3, v6

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/StempleView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/yopeso/lieferando/R$color;->text_grey:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    aput v4, v3, v7

    invoke-virtual {v1, v3}, Lcom/yopeso/lieferando/view/StempleElement;->setTextColor([I)V

    .line 228
    invoke-virtual {v1}, Lcom/yopeso/lieferando/view/StempleElement;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v3

    if-eqz v3, :cond_3

    if-eqz p2, :cond_3

    invoke-virtual {v1}, Lcom/yopeso/lieferando/view/StempleElement;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/Stamp;->getFirstDiscount()Lcom/yopeso/lieferando/model/Discount;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Lcom/yopeso/lieferando/view/StempleElement;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/Stamp;->getFirstDiscount()Lcom/yopeso/lieferando/model/Discount;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/Discount;->ismNewCustomer()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p3}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->isDeliverNow()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 230
    invoke-direct {p0, v1, p3}, Lcom/yopeso/lieferando/view/StempleView;->enablePartnerRebateCB(Lcom/yopeso/lieferando/view/StempleElement;Lcom/yopeso/lieferando/model/cart/ShoppingCart;)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/yopeso/lieferando/view/StempleElement;->setEnableCheckbox(Z)V

    goto/16 :goto_0

    .line 233
    :cond_3
    invoke-virtual {v1, v6}, Lcom/yopeso/lieferando/view/StempleElement;->setEnableCheckbox(Z)V

    .line 234
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->isLoggedIn()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 235
    new-array v3, v8, [Ljava/lang/String;

    aput-object p1, v3, v6

    const-string v4, ""

    aput-object v4, v3, v7

    invoke-virtual {v1, v3}, Lcom/yopeso/lieferando/view/StempleElement;->setText([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 239
    :cond_4
    invoke-virtual {v1}, Lcom/yopeso/lieferando/view/StempleElement;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/yopeso/lieferando/view/StempleElement;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/Stamp;->getFirstDiscount()Lcom/yopeso/lieferando/model/Discount;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/yopeso/lieferando/view/StempleElement;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/Stamp;->getFirstDiscount()Lcom/yopeso/lieferando/model/Discount;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/Discount;->ismNewCustomer()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 240
    new-array v3, v8, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/StempleView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/yopeso/lieferando/R$string;->login_to_use_newcustomer_rebate:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const-string v4, ""

    aput-object v4, v3, v7

    invoke-virtual {v1, v3}, Lcom/yopeso/lieferando/view/StempleElement;->setText([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 247
    :cond_5
    invoke-virtual {v1, v6}, Lcom/yopeso/lieferando/view/StempleElement;->setEnableCheckbox(Z)V

    .line 248
    invoke-virtual {v1}, Lcom/yopeso/lieferando/view/StempleElement;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v1}, Lcom/yopeso/lieferando/view/StempleElement;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/Stamp;->isFull()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v1}, Lcom/yopeso/lieferando/view/StempleElement;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/Stamp;->getUserStamps()I

    move-result v3

    invoke-virtual {v1}, Lcom/yopeso/lieferando/view/StempleElement;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yopeso/lieferando/model/Stamp;->getNeededStamps()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 249
    new-array v3, v7, [I

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/StempleView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/yopeso/lieferando/R$color;->black:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    aput v4, v3, v6

    invoke-virtual {v1, v3}, Lcom/yopeso/lieferando/view/StempleElement;->setTextColor([I)V

    .line 250
    new-array v3, v7, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/StempleView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/yopeso/lieferando/R$string;->stempel_open:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v3}, Lcom/yopeso/lieferando/view/StempleElement;->setText([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 252
    :cond_6
    new-array v3, v7, [I

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/StempleView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/yopeso/lieferando/R$color;->text_grey:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    aput v4, v3, v6

    invoke-virtual {v1, v3}, Lcom/yopeso/lieferando/view/StempleElement;->setTextColor([I)V

    .line 253
    invoke-virtual {v1}, Lcom/yopeso/lieferando/view/StempleElement;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/yopeso/lieferando/view/StempleElement;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/Stamp;->isFull()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/yopeso/lieferando/view/StempleElement;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/Stamp;->isPending()Z

    move-result v3

    if-nez v3, :cond_0

    .line 254
    new-array v3, v7, [Ljava/lang/String;

    aput-object p1, v3, v6

    invoke-virtual {v1, v3}, Lcom/yopeso/lieferando/view/StempleElement;->setText([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 266
    .end local v1    # "se":Lcom/yopeso/lieferando/view/StempleElement;
    .restart local v0    # "app":Lcom/yopeso/lieferando/LieferandoApplication;
    :cond_7
    iget-object v2, p0, Lcom/yopeso/lieferando/view/StempleView;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->isLoggedIn()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p3}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p3}, Lcom/yopeso/lieferando/model/cart/ShoppingCart;->getRestaurant()Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Stamp;->hasStampcardCampain()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 267
    iget-object v2, p0, Lcom/yopeso/lieferando/view/StempleView;->mStempelMsg:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 268
    iget-object v2, p0, Lcom/yopeso/lieferando/view/StempleView;->mStempelMsg:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/StempleView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/yopeso/lieferando/R$string;->stempel_login_to_use:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method public diselectAll()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 210
    iget-object v1, p0, Lcom/yopeso/lieferando/view/StempleView;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 219
    return-void

    .line 210
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/view/StempleElement;

    .line 211
    .local v0, "se":Lcom/yopeso/lieferando/view/StempleElement;
    invoke-virtual {v0}, Lcom/yopeso/lieferando/view/StempleElement;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/yopeso/lieferando/view/StempleElement;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Stamp;->isFull()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/yopeso/lieferando/view/StempleElement;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/Stamp;->getUserStamps()I

    move-result v2

    invoke-virtual {v0}, Lcom/yopeso/lieferando/view/StempleElement;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/Stamp;->getNeededStamps()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 212
    new-array v2, v6, [I

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/StempleView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/yopeso/lieferando/R$color;->black:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    aput v3, v2, v5

    invoke-virtual {v0, v2}, Lcom/yopeso/lieferando/view/StempleElement;->setTextColor([I)V

    .line 213
    new-array v2, v6, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/StempleView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/yopeso/lieferando/R$string;->stempel_open:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v2}, Lcom/yopeso/lieferando/view/StempleElement;->setText([Ljava/lang/String;)V

    .line 217
    :goto_1
    invoke-virtual {v0, v5}, Lcom/yopeso/lieferando/view/StempleElement;->setChecked(Z)V

    goto :goto_0

    .line 215
    :cond_1
    const/4 v2, 0x2

    new-array v2, v2, [I

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/StempleView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/yopeso/lieferando/R$color;->text_grey:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    aput v3, v2, v5

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/StempleView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/yopeso/lieferando/R$color;->text_grey:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    aput v3, v2, v6

    invoke-virtual {v0, v2}, Lcom/yopeso/lieferando/view/StempleElement;->setTextColor([I)V

    goto :goto_1
.end method

.method public diselectOthers(Lcom/yopeso/lieferando/model/Stamp;)V
    .locals 8
    .param p1, "s"    # Lcom/yopeso/lieferando/model/Stamp;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 162
    iget-object v1, p0, Lcom/yopeso/lieferando/view/StempleView;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 207
    return-void

    .line 162
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/view/StempleElement;

    .line 163
    .local v0, "se":Lcom/yopeso/lieferando/view/StempleElement;
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/Stamp;->isDiscount()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 165
    invoke-virtual {v0}, Lcom/yopeso/lieferando/view/StempleElement;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/Stamp;->isDiscount()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 166
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/Stamp;->getmDiscounts()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yopeso/lieferando/model/Discount;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/Discount;->getId()I

    move-result v3

    invoke-virtual {v0}, Lcom/yopeso/lieferando/view/StempleElement;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/Stamp;->getmDiscounts()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yopeso/lieferando/model/Discount;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/Discount;->getId()I

    move-result v1

    if-eq v3, v1, :cond_1

    .line 168
    invoke-virtual {v0, v5}, Lcom/yopeso/lieferando/view/StempleElement;->setChecked(Z)V

    .line 169
    new-array v1, v7, [I

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/StempleView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/yopeso/lieferando/R$color;->text_grey:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    aput v3, v1, v5

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/StempleView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/yopeso/lieferando/R$color;->text_grey:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    aput v3, v1, v6

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/StempleElement;->setTextColor([I)V

    goto :goto_0

    .line 172
    :cond_1
    invoke-virtual {v0, v6}, Lcom/yopeso/lieferando/view/StempleElement;->setChecked(Z)V

    .line 173
    new-array v1, v7, [I

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/StempleView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/yopeso/lieferando/R$color;->black:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    aput v3, v1, v5

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/StempleView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/yopeso/lieferando/R$color;->black:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    aput v3, v1, v6

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/StempleElement;->setTextColor([I)V

    goto :goto_0

    .line 178
    :cond_2
    invoke-virtual {v0}, Lcom/yopeso/lieferando/view/StempleElement;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/yopeso/lieferando/view/StempleElement;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/Stamp;->isFull()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/yopeso/lieferando/view/StempleElement;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/Stamp;->getUserStamps()I

    move-result v1

    invoke-virtual {v0}, Lcom/yopeso/lieferando/view/StempleElement;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/Stamp;->getNeededStamps()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 179
    new-array v1, v6, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/StempleView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/yopeso/lieferando/R$string;->rebate_will_not_get_new:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/StempleElement;->setText([Ljava/lang/String;)V

    .line 181
    :cond_3
    invoke-virtual {v0, v5}, Lcom/yopeso/lieferando/view/StempleElement;->setChecked(Z)V

    .line 182
    new-array v1, v6, [I

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/StempleView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/yopeso/lieferando/R$color;->text_grey:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    aput v3, v1, v5

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/StempleElement;->setTextColor([I)V

    goto/16 :goto_0

    .line 187
    :cond_4
    invoke-virtual {v0}, Lcom/yopeso/lieferando/view/StempleElement;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/Stamp;->isDiscount()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 188
    new-array v1, v6, [I

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/StempleView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/yopeso/lieferando/R$color;->text_grey:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    aput v3, v1, v5

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/StempleElement;->setTextColor([I)V

    .line 189
    invoke-virtual {v0, v5}, Lcom/yopeso/lieferando/view/StempleElement;->setChecked(Z)V

    goto/16 :goto_0

    .line 193
    :cond_5
    invoke-virtual {v0}, Lcom/yopeso/lieferando/view/StempleElement;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/Stamp;->getId()I

    move-result v1

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/Stamp;->getId()I

    move-result v3

    if-eq v1, v3, :cond_7

    .line 194
    invoke-virtual {v0}, Lcom/yopeso/lieferando/view/StempleElement;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/yopeso/lieferando/view/StempleElement;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/Stamp;->isFull()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0}, Lcom/yopeso/lieferando/view/StempleElement;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/Stamp;->getUserStamps()I

    move-result v1

    invoke-virtual {v0}, Lcom/yopeso/lieferando/view/StempleElement;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/Stamp;->getNeededStamps()I

    move-result v3

    if-ge v1, v3, :cond_6

    .line 195
    new-array v1, v6, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/StempleView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/yopeso/lieferando/R$string;->stempel_will_not_get_new:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/StempleElement;->setText([Ljava/lang/String;)V

    .line 197
    :cond_6
    invoke-virtual {v0, v5}, Lcom/yopeso/lieferando/view/StempleElement;->setChecked(Z)V

    .line 198
    new-array v1, v6, [I

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/StempleView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/yopeso/lieferando/R$color;->text_grey:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    aput v3, v1, v5

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/StempleElement;->setTextColor([I)V

    goto/16 :goto_0

    .line 200
    :cond_7
    invoke-virtual {v0, v6}, Lcom/yopeso/lieferando/view/StempleElement;->setChecked(Z)V

    .line 201
    new-array v1, v6, [I

    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/StempleView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/yopeso/lieferando/R$color;->black:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    aput v3, v1, v5

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/StempleElement;->setTextColor([I)V

    goto/16 :goto_0
.end method

.method public enableStample()V
    .locals 3

    .prologue
    .line 288
    iget-object v1, p0, Lcom/yopeso/lieferando/view/StempleView;->mStempleLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 289
    iget-object v1, p0, Lcom/yopeso/lieferando/view/StempleView;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 292
    iget-object v1, p0, Lcom/yopeso/lieferando/view/StempleView;->mStempelMsg:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 293
    return-void

    .line 289
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/view/StempleElement;

    .line 290
    .local v0, "se":Lcom/yopeso/lieferando/view/StempleElement;
    invoke-virtual {v0}, Lcom/yopeso/lieferando/view/StempleElement;->enableStemple()V

    goto :goto_0
.end method

.method public setListener(Lcom/yopeso/lieferando/callback/StempelSelectedCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/yopeso/lieferando/callback/StempelSelectedCallback;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/yopeso/lieferando/view/StempleView;->mCallback:Lcom/yopeso/lieferando/callback/StempelSelectedCallback;

    .line 50
    return-void
.end method

.method public setUserStampCards(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Lcom/yopeso/lieferando/model/cart/ShoppingCart;)V
    .locals 9
    .param p1, "r"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;
    .param p2, "cart"    # Lcom/yopeso/lieferando/model/cart/ShoppingCart;

    .prologue
    .line 70
    iget-object v6, p0, Lcom/yopeso/lieferando/view/StempleView;->mContext:Landroid/content/Context;

    check-cast v6, Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/LieferandoApplication;

    .line 71
    .local v0, "app":Lcom/yopeso/lieferando/LieferandoApplication;
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->isLoggedIn()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 72
    iget-object v6, p0, Lcom/yopeso/lieferando/view/StempleView;->mStamps:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_2

    .line 74
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/view/StempleView;->addDiscounts(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    .line 77
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v6

    invoke-interface {v6}, Lcom/yopeso/lieferando/net/config/IConfig;->isTakeaway()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v6

    invoke-virtual {v6}, Lcom/yopeso/lieferando/model/SettingsContent;->isStampcardActive()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 81
    :cond_0
    iget-object v6, p0, Lcom/yopeso/lieferando/view/StempleView;->mStamps:Ljava/util/ArrayList;

    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v7

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/yopeso/lieferando/model/user/UserData;->getFullStamps(I)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 82
    iget-object v6, p0, Lcom/yopeso/lieferando/view/StempleView;->mStamps:Ljava/util/ArrayList;

    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v7

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/yopeso/lieferando/model/user/UserData;->getNotFullStamps(I)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 84
    const/4 v4, 0x1

    .line 85
    .local v4, "noCardInProgress":Z
    iget-object v6, p0, Lcom/yopeso/lieferando/view/StempleView;->mStamps:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_3

    .line 91
    if-eqz v4, :cond_2

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/yopeso/lieferando/model/Stamp;->getNeededStamps()I

    move-result v6

    if-eqz v6, :cond_2

    .line 92
    new-instance v2, Lcom/yopeso/lieferando/model/Stamp;

    invoke-direct {v2}, Lcom/yopeso/lieferando/model/Stamp;-><init>()V

    .line 93
    .local v2, "empty":Lcom/yopeso/lieferando/model/Stamp;
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/yopeso/lieferando/model/Stamp;->setUserStamps(I)V

    .line 94
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getStamp()Lcom/yopeso/lieferando/model/Stamp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/yopeso/lieferando/model/Stamp;->getNeededStamps()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/yopeso/lieferando/model/Stamp;->setNeededStamps(I)V

    .line 95
    iget-object v6, p0, Lcom/yopeso/lieferando/view/StempleView;->mStamps:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    .end local v2    # "empty":Lcom/yopeso/lieferando/model/Stamp;
    .end local v4    # "noCardInProgress":Z
    :cond_2
    iget-object v6, p0, Lcom/yopeso/lieferando/view/StempleView;->mStempelMsg:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 110
    :goto_1
    const/4 v3, 0x0

    .line 111
    .local v3, "i":I
    const/4 v3, 0x0

    :goto_2
    iget-object v6, p0, Lcom/yopeso/lieferando/view/StempleView;->mStamps:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v3, v6, :cond_5

    .line 125
    return-void

    .line 85
    .end local v3    # "i":I
    .restart local v4    # "noCardInProgress":Z
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yopeso/lieferando/model/Stamp;

    .line 86
    .local v5, "st":Lcom/yopeso/lieferando/model/Stamp;
    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/Stamp;->isFull()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/Stamp;->getUserStamps()I

    move-result v7

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/Stamp;->getNeededStamps()I

    move-result v8

    if-ge v7, v8, :cond_1

    .line 87
    const/4 v4, 0x0

    goto :goto_0

    .line 103
    .end local v4    # "noCardInProgress":Z
    .end local v5    # "st":Lcom/yopeso/lieferando/model/Stamp;
    :cond_4
    iget-object v6, p0, Lcom/yopeso/lieferando/view/StempleView;->mContext:Landroid/content/Context;

    sget v7, Lcom/yopeso/lieferando/R$string;->stempel_login_to_use:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {p0, v6, v7, p2}, Lcom/yopeso/lieferando/view/StempleView;->disableStample(Ljava/lang/String;ZLcom/yopeso/lieferando/model/cart/ShoppingCart;)V

    .line 104
    invoke-virtual {p0}, Lcom/yopeso/lieferando/view/StempleView;->clearStampsView()V

    .line 105
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/view/StempleView;->addDiscounts(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    goto :goto_1

    .line 112
    .restart local v3    # "i":I
    :cond_5
    iget-object v6, p0, Lcom/yopeso/lieferando/view/StempleView;->mStamps:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yopeso/lieferando/model/Stamp;

    .line 113
    .restart local v5    # "st":Lcom/yopeso/lieferando/model/Stamp;
    new-instance v1, Lcom/yopeso/lieferando/view/StempleElement;

    iget-object v6, p0, Lcom/yopeso/lieferando/view/StempleView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v6}, Lcom/yopeso/lieferando/view/StempleElement;-><init>(Landroid/content/Context;)V

    .line 114
    .local v1, "element":Lcom/yopeso/lieferando/view/StempleElement;
    iget-object v6, p0, Lcom/yopeso/lieferando/view/StempleView;->mCallback:Lcom/yopeso/lieferando/callback/StempelSelectedCallback;

    invoke-virtual {v1, v5, v6, p2}, Lcom/yopeso/lieferando/view/StempleElement;->setStamp(Lcom/yopeso/lieferando/model/Stamp;Lcom/yopeso/lieferando/callback/StempelSelectedCallback;Lcom/yopeso/lieferando/model/cart/ShoppingCart;)V

    .line 115
    if-nez v3, :cond_6

    .line 116
    invoke-virtual {v1}, Lcom/yopeso/lieferando/view/StempleElement;->removeTopDivider()V

    .line 118
    :cond_6
    iget-object v6, p0, Lcom/yopeso/lieferando/view/StempleView;->mStamps:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v3, v6, :cond_7

    .line 119
    invoke-virtual {v1}, Lcom/yopeso/lieferando/view/StempleElement;->removeBottomDivider()V

    .line 122
    :cond_7
    iget-object v6, p0, Lcom/yopeso/lieferando/view/StempleView;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object v6, p0, Lcom/yopeso/lieferando/view/StempleView;->mListlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 111
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method
