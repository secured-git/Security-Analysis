.class public Lcom/yopeso/lieferando/adapters/DeliveryServicesPremiumAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DeliveryServicesPremiumAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/yopeso/lieferando/model/restaurant/Restaurant;",
        ">;"
    }
.end annotation


# instance fields
.field private mCallBack:Lcom/yopeso/lieferando/callback/RestaurantSelectedCallback;

.field private mContext:Landroid/content/Context;

.field private mRestaurants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yopeso/lieferando/model/restaurant/Restaurant;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/yopeso/lieferando/callback/RestaurantSelectedCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "callback"    # Lcom/yopeso/lieferando/callback/RestaurantSelectedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/yopeso/lieferando/model/restaurant/Restaurant;",
            ">;",
            "Lcom/yopeso/lieferando/callback/RestaurantSelectedCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 35
    .local p2, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/yopeso/lieferando/model/restaurant/Restaurant;>;"
    sget v0, Lcom/yopeso/lieferando/R$layout;->auto_complete_item:I

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/adapters/DeliveryServicesPremiumAdapter;->mRestaurants:Ljava/util/List;

    .line 36
    iput-object p1, p0, Lcom/yopeso/lieferando/adapters/DeliveryServicesPremiumAdapter;->mContext:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/yopeso/lieferando/adapters/DeliveryServicesPremiumAdapter;->mRestaurants:Ljava/util/List;

    .line 38
    iput-object p3, p0, Lcom/yopeso/lieferando/adapters/DeliveryServicesPremiumAdapter;->mCallBack:Lcom/yopeso/lieferando/callback/RestaurantSelectedCallback;

    .line 39
    return-void
.end method

.method static synthetic access$0(Lcom/yopeso/lieferando/adapters/DeliveryServicesPremiumAdapter;)Lcom/yopeso/lieferando/callback/RestaurantSelectedCallback;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/DeliveryServicesPremiumAdapter;->mCallBack:Lcom/yopeso/lieferando/callback/RestaurantSelectedCallback;

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 43
    if-nez p2, :cond_0

    .line 44
    iget-object v4, p0, Lcom/yopeso/lieferando/adapters/DeliveryServicesPremiumAdapter;->mContext:Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 45
    .local v0, "li":Landroid/view/LayoutInflater;
    sget v4, Lcom/yopeso/lieferando/R$layout;->delivery_area_item_premium:I

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 47
    .end local v0    # "li":Landroid/view/LayoutInflater;
    :cond_0
    iget-object v4, p0, Lcom/yopeso/lieferando/adapters/DeliveryServicesPremiumAdapter;->mRestaurants:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .line 48
    .local v1, "resto":Lcom/yopeso/lieferando/model/restaurant/Restaurant;
    sget v4, Lcom/yopeso/lieferando/R$id;->CityZIP:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getCity()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getZipCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    sget v4, Lcom/yopeso/lieferando/R$id;->Street:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getAddressStreet()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getAddressNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    sget v4, Lcom/yopeso/lieferando/R$id;->openings:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 52
    .local v2, "scheduleTextView":Landroid/widget/TextView;
    sget-object v4, Lcom/yopeso/lieferando/LieferandoApplication;->sCurrentDate:Ljava/util/Date;

    invoke-virtual {v1, v4}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getScheduleMerged(Ljava/util/Date;)Ljava/util/ArrayList;

    move-result-object v3

    .line 53
    .local v3, "schedules":Ljava/util/List;, "Ljava/util/List<Lcom/yopeso/lieferando/model/restaurant/Opening;>;"
    if-eqz v3, :cond_1

    .line 54
    iget-object v4, p0, Lcom/yopeso/lieferando/adapters/DeliveryServicesPremiumAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->getSchedulesAsString(Ljava/util/List;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    :goto_0
    sget v4, Lcom/yopeso/lieferando/R$id;->minimumOrder:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/yopeso/lieferando/adapters/DeliveryServicesPremiumAdapter;->mContext:Landroid/content/Context;

    sget v6, Lcom/yopeso/lieferando/R$string;->price_from:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getDecimalFormatter()Ljava/text/DecimalFormat;

    move-result-object v8

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getMinCost()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x42c80000    # 100.0f

    div-float/2addr v9, v10

    float-to-double v10, v9

    invoke-virtual {v8, v10, v11}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    new-instance v4, Lcom/yopeso/lieferando/adapters/DeliveryServicesPremiumAdapter$1;

    invoke-direct {v4, p0, v1}, Lcom/yopeso/lieferando/adapters/DeliveryServicesPremiumAdapter$1;-><init>(Lcom/yopeso/lieferando/adapters/DeliveryServicesPremiumAdapter;Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    invoke-virtual {p2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    return-object p2

    .line 56
    :cond_1
    sget v4, Lcom/yopeso/lieferando/R$string;->open:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
