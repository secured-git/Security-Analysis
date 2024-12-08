.class public Lcom/yopeso/lieferando/adapters/PreorderAdapter;
.super Landroid/widget/ArrayAdapter;
.source "PreorderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/util/Date;",
        ">;"
    }
.end annotation


# instance fields
.field private mAllDates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field

.field private mCallBack:Lcom/yopeso/lieferando/callback/DeliveryTimeCallBack;

.field private mContext:Landroid/content/Context;

.field private mDates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;Lcom/yopeso/lieferando/callback/DeliveryTimeCallBack;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textViewResourceId"    # I
    .param p4, "callback"    # Lcom/yopeso/lieferando/callback/DeliveryTimeCallBack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Date;",
            ">;",
            "Lcom/yopeso/lieferando/callback/DeliveryTimeCallBack;",
            ")V"
        }
    .end annotation

    .prologue
    .line 34
    .local p3, "objects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Date;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 35
    iput-object p3, p0, Lcom/yopeso/lieferando/adapters/PreorderAdapter;->mDates:Ljava/util/ArrayList;

    .line 36
    iput-object p3, p0, Lcom/yopeso/lieferando/adapters/PreorderAdapter;->mAllDates:Ljava/util/ArrayList;

    .line 37
    iput-object p1, p0, Lcom/yopeso/lieferando/adapters/PreorderAdapter;->mContext:Landroid/content/Context;

    .line 38
    iput-object p4, p0, Lcom/yopeso/lieferando/adapters/PreorderAdapter;->mCallBack:Lcom/yopeso/lieferando/callback/DeliveryTimeCallBack;

    .line 39
    return-void
.end method

.method static synthetic access$0(Lcom/yopeso/lieferando/adapters/PreorderAdapter;)Lcom/yopeso/lieferando/callback/DeliveryTimeCallBack;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/PreorderAdapter;->mCallBack:Lcom/yopeso/lieferando/callback/DeliveryTimeCallBack;

    return-object v0
.end method


# virtual methods
.method public filterDays(I)V
    .locals 5
    .param p1, "day"    # I

    .prologue
    .line 92
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/yopeso/lieferando/adapters/PreorderAdapter;->mAllDates:Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, p0, Lcom/yopeso/lieferando/adapters/PreorderAdapter;->mDates:Ljava/util/ArrayList;

    .line 94
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Date;>;"
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 96
    .local v0, "cal":Ljava/util/Calendar;
    iget-object v3, p0, Lcom/yopeso/lieferando/adapters/PreorderAdapter;->mAllDates:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 102
    iget-object v3, p0, Lcom/yopeso/lieferando/adapters/PreorderAdapter;->mDates:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 103
    invoke-virtual {p0}, Lcom/yopeso/lieferando/adapters/PreorderAdapter;->notifyDataSetChanged()V

    .line 104
    return-void

    .line 96
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    .line 97
    .local v1, "date":Ljava/util/Date;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 98
    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-eq v4, p1, :cond_0

    .line 99
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/PreorderAdapter;->mDates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 63
    if-nez p2, :cond_0

    .line 64
    iget-object v3, p0, Lcom/yopeso/lieferando/adapters/PreorderAdapter;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 65
    .local v2, "li":Landroid/view/LayoutInflater;
    sget v3, Lcom/yopeso/lieferando/R$layout;->delivery_time_spinner:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 67
    .end local v2    # "li":Landroid/view/LayoutInflater;
    :cond_0
    iget-object v3, p0, Lcom/yopeso/lieferando/adapters/PreorderAdapter;->mDates:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 68
    iget-object v3, p0, Lcom/yopeso/lieferando/adapters/PreorderAdapter;->mDates:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    .line 69
    .local v0, "date":Ljava/util/Date;
    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getPreorderFromat()Ljava/text/SimpleDateFormat;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, "dateString":Ljava/lang/String;
    sget v3, Lcom/yopeso/lieferando/R$id;->spinnerMainElement:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    new-instance v3, Lcom/yopeso/lieferando/adapters/PreorderAdapter$1;

    invoke-direct {v3, p0, v0}, Lcom/yopeso/lieferando/adapters/PreorderAdapter$1;-><init>(Lcom/yopeso/lieferando/adapters/PreorderAdapter;Ljava/util/Date;)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    .end local v0    # "date":Ljava/util/Date;
    .end local v1    # "dateString":Ljava/lang/String;
    :cond_1
    return-object p2
.end method

.method public getElementById(I)Ljava/util/Date;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 83
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/PreorderAdapter;->mDates:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 48
    if-nez p2, :cond_0

    .line 49
    iget-object v3, p0, Lcom/yopeso/lieferando/adapters/PreorderAdapter;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 50
    .local v2, "li":Landroid/view/LayoutInflater;
    sget v3, Lcom/yopeso/lieferando/R$layout;->delivery_time_spinner:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 52
    .end local v2    # "li":Landroid/view/LayoutInflater;
    :cond_0
    iget-object v3, p0, Lcom/yopeso/lieferando/adapters/PreorderAdapter;->mDates:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 53
    iget-object v3, p0, Lcom/yopeso/lieferando/adapters/PreorderAdapter;->mDates:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    .line 54
    .local v0, "date":Ljava/util/Date;
    invoke-static {}, Lcom/yopeso/lieferando/util/FormatUtils;->getPreorderFromat()Ljava/text/SimpleDateFormat;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "dateString":Ljava/lang/String;
    sget v3, Lcom/yopeso/lieferando/R$id;->spinnerMainElement:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    .end local v0    # "date":Ljava/util/Date;
    .end local v1    # "dateString":Ljava/lang/String;
    :cond_1
    return-object p2
.end method

.method public setData(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Date;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, "dates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Date;>;"
    iput-object p1, p0, Lcom/yopeso/lieferando/adapters/PreorderAdapter;->mDates:Ljava/util/ArrayList;

    .line 43
    iput-object p1, p0, Lcom/yopeso/lieferando/adapters/PreorderAdapter;->mAllDates:Ljava/util/ArrayList;

    .line 44
    return-void
.end method
