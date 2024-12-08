.class public Lcom/yopeso/lieferando/adapters/UserDeliveryAreaAdapter;
.super Landroid/widget/ArrayAdapter;
.source "UserDeliveryAreaAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private mCallBack:Lcom/yopeso/lieferando/callback/DeliveryAreaAdapterCallBack;

.field private mContext:Landroid/content/Context;

.field private mLocations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/yopeso/lieferando/callback/DeliveryAreaAdapterCallBack;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "callback"    # Lcom/yopeso/lieferando/callback/DeliveryAreaAdapterCallBack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/yopeso/lieferando/callback/DeliveryAreaAdapterCallBack;",
            ")V"
        }
    .end annotation

    .prologue
    .line 33
    .local p2, "objects":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    sget v0, Lcom/yopeso/lieferando/R$layout;->auto_complete_item:I

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/adapters/UserDeliveryAreaAdapter;->mLocations:Ljava/util/List;

    .line 34
    iput-object p1, p0, Lcom/yopeso/lieferando/adapters/UserDeliveryAreaAdapter;->mContext:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/yopeso/lieferando/adapters/UserDeliveryAreaAdapter;->mLocations:Ljava/util/List;

    .line 36
    iput-object p3, p0, Lcom/yopeso/lieferando/adapters/UserDeliveryAreaAdapter;->mCallBack:Lcom/yopeso/lieferando/callback/DeliveryAreaAdapterCallBack;

    .line 37
    return-void
.end method

.method static synthetic access$0(Lcom/yopeso/lieferando/adapters/UserDeliveryAreaAdapter;)Lcom/yopeso/lieferando/callback/DeliveryAreaAdapterCallBack;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/UserDeliveryAreaAdapter;->mCallBack:Lcom/yopeso/lieferando/callback/DeliveryAreaAdapterCallBack;

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 41
    if-nez p2, :cond_0

    .line 42
    iget-object v4, p0, Lcom/yopeso/lieferando/adapters/UserDeliveryAreaAdapter;->mContext:Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 43
    .local v1, "li":Landroid/view/LayoutInflater;
    sget v4, Lcom/yopeso/lieferando/R$layout;->suggestion_list_item:I

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 46
    .end local v1    # "li":Landroid/view/LayoutInflater;
    :cond_0
    iget-object v4, p0, Lcom/yopeso/lieferando/adapters/UserDeliveryAreaAdapter;->mLocations:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 48
    .local v3, "obj":Ljava/lang/Object;
    instance-of v4, v3, Lcom/yopeso/lieferando/model/user/Location;

    if-eqz v4, :cond_2

    move-object v2, v3

    .line 49
    check-cast v2, Lcom/yopeso/lieferando/model/user/Location;

    .line 51
    .local v2, "loc":Lcom/yopeso/lieferando/model/user/Location;
    sget v4, Lcom/yopeso/lieferando/R$id;->PostalCode:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/Location;->getPlz()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    sget v4, Lcom/yopeso/lieferando/R$id;->CityName:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/Location;->getStreet()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/Location;->getHnr()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/Location;->getCityName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    new-instance v4, Lcom/yopeso/lieferando/adapters/UserDeliveryAreaAdapter$1;

    invoke-direct {v4, p0, v2}, Lcom/yopeso/lieferando/adapters/UserDeliveryAreaAdapter$1;-><init>(Lcom/yopeso/lieferando/adapters/UserDeliveryAreaAdapter;Lcom/yopeso/lieferando/model/user/Location;)V

    invoke-virtual {p2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    .end local v2    # "loc":Lcom/yopeso/lieferando/model/user/Location;
    :cond_1
    :goto_0
    return-object p2

    .line 61
    :cond_2
    instance-of v4, v3, Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;

    if-eqz v4, :cond_1

    move-object v0, v3

    .line 62
    check-cast v0, Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;

    .line 64
    .local v0, "area":Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;
    sget v4, Lcom/yopeso/lieferando/R$id;->PostalCode:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;->getPlz()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    sget v4, Lcom/yopeso/lieferando/R$id;->CityName:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;->getCityName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    new-instance v4, Lcom/yopeso/lieferando/adapters/UserDeliveryAreaAdapter$2;

    invoke-direct {v4, p0, v0}, Lcom/yopeso/lieferando/adapters/UserDeliveryAreaAdapter$2;-><init>(Lcom/yopeso/lieferando/adapters/UserDeliveryAreaAdapter;Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;)V

    invoke-virtual {p2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
