.class public Lcom/yopeso/lieferando/adapters/restaurant/MenuAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/yopeso/lieferando/model/meal/DishCategory;",
        ">;"
    }
.end annotation


# instance fields
.field private mCallback:Lcom/yopeso/lieferando/callback/IMenuSelected;

.field private mContext:Landroid/content/Context;

.field private mDishes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/meal/DishCategory;",
            ">;"
        }
    .end annotation
.end field

.field private mRealDishes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/meal/DishCategory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;Lcom/yopeso/lieferando/callback/IMenuSelected;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textViewResourceId"    # I
    .param p4, "callback"    # Lcom/yopeso/lieferando/callback/IMenuSelected;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/meal/DishCategory;",
            ">;",
            "Lcom/yopeso/lieferando/callback/IMenuSelected;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    .local p3, "objects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/meal/DishCategory;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 33
    iput-object p1, p0, Lcom/yopeso/lieferando/adapters/restaurant/MenuAdapter;->mContext:Landroid/content/Context;

    .line 34
    iput-object p3, p0, Lcom/yopeso/lieferando/adapters/restaurant/MenuAdapter;->mDishes:Ljava/util/ArrayList;

    .line 35
    iput-object p3, p0, Lcom/yopeso/lieferando/adapters/restaurant/MenuAdapter;->mRealDishes:Ljava/util/ArrayList;

    .line 36
    iput-object p4, p0, Lcom/yopeso/lieferando/adapters/restaurant/MenuAdapter;->mCallback:Lcom/yopeso/lieferando/callback/IMenuSelected;

    .line 37
    return-void
.end method

.method static synthetic access$0(Lcom/yopeso/lieferando/adapters/restaurant/MenuAdapter;)Lcom/yopeso/lieferando/callback/IMenuSelected;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/MenuAdapter;->mCallback:Lcom/yopeso/lieferando/callback/IMenuSelected;

    return-object v0
.end method

.method static synthetic access$1(Lcom/yopeso/lieferando/adapters/restaurant/MenuAdapter;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/MenuAdapter;->mDishes:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2(Lcom/yopeso/lieferando/adapters/restaurant/MenuAdapter;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/yopeso/lieferando/adapters/restaurant/MenuAdapter;->mDishes:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$3(Lcom/yopeso/lieferando/adapters/restaurant/MenuAdapter;Ljava/lang/CharSequence;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/adapters/restaurant/MenuAdapter;->getFilteredResults(Ljava/lang/CharSequence;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private getFilteredResults(Ljava/lang/CharSequence;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/meal/DishCategory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/meal/DishCategory;>;"
    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/restaurant/MenuAdapter;->mRealDishes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 87
    return-object v1

    .line 82
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/meal/DishCategory;

    .line 83
    .local v0, "dish":Lcom/yopeso/lieferando/model/meal/DishCategory;
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/meal/DishCategory;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 84
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/MenuAdapter;->mDishes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lcom/yopeso/lieferando/adapters/restaurant/MenuAdapter$2;

    invoke-direct {v0, p0}, Lcom/yopeso/lieferando/adapters/restaurant/MenuAdapter$2;-><init>(Lcom/yopeso/lieferando/adapters/restaurant/MenuAdapter;)V

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 41
    if-nez p2, :cond_0

    .line 42
    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/restaurant/MenuAdapter;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 43
    .local v0, "li":Landroid/view/LayoutInflater;
    sget v1, Lcom/yopeso/lieferando/R$layout;->menu_list_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 45
    .end local v0    # "li":Landroid/view/LayoutInflater;
    :cond_0
    new-instance v1, Lcom/yopeso/lieferando/adapters/restaurant/MenuAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/yopeso/lieferando/adapters/restaurant/MenuAdapter$1;-><init>(Lcom/yopeso/lieferando/adapters/restaurant/MenuAdapter;I)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    sget v1, Lcom/yopeso/lieferando/R$id;->MenuName:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/restaurant/MenuAdapter;->mDishes:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yopeso/lieferando/model/meal/DishCategory;

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/meal/DishCategory;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    return-object p2
.end method
