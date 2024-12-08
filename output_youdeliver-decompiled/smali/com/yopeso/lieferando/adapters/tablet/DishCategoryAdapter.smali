.class public Lcom/yopeso/lieferando/adapters/tablet/DishCategoryAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DishCategoryAdapter.java"


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
.field private mAllDishes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/meal/DishCategory;",
            ">;"
        }
    .end annotation
.end field

.field private mAvalibleItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/meal/DishCategory;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Lcom/yopeso/lieferando/callback/IMenuSelected;

.field private mContext:Landroid/content/Context;

.field private mDisplayedItems:Ljava/util/ArrayList;
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
.method public constructor <init>(Landroid/content/Context;ILcom/yopeso/lieferando/callback/IMenuSelected;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textViewResourceId"    # I
    .param p3, "callback"    # Lcom/yopeso/lieferando/callback/IMenuSelected;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/adapters/tablet/DishCategoryAdapter;->mAllDishes:Ljava/util/ArrayList;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/adapters/tablet/DishCategoryAdapter;->mAvalibleItems:Ljava/util/ArrayList;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/adapters/tablet/DishCategoryAdapter;->mDisplayedItems:Ljava/util/ArrayList;

    .line 39
    iput-object p1, p0, Lcom/yopeso/lieferando/adapters/tablet/DishCategoryAdapter;->mContext:Landroid/content/Context;

    .line 40
    iput-object p3, p0, Lcom/yopeso/lieferando/adapters/tablet/DishCategoryAdapter;->mCallback:Lcom/yopeso/lieferando/callback/IMenuSelected;

    .line 41
    return-void
.end method

.method static synthetic access$1(Lcom/yopeso/lieferando/adapters/tablet/DishCategoryAdapter;)Lcom/yopeso/lieferando/callback/IMenuSelected;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/tablet/DishCategoryAdapter;->mCallback:Lcom/yopeso/lieferando/callback/IMenuSelected;

    return-object v0
.end method

.method static synthetic access$2(Lcom/yopeso/lieferando/adapters/tablet/DishCategoryAdapter;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/yopeso/lieferando/adapters/tablet/DishCategoryAdapter;->mDisplayedItems:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$3(Lcom/yopeso/lieferando/adapters/tablet/DishCategoryAdapter;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/tablet/DishCategoryAdapter;->mAvalibleItems:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/tablet/DishCategoryAdapter;->mDisplayedItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 98
    new-instance v0, Lcom/yopeso/lieferando/adapters/tablet/DishCategoryAdapter$2;

    invoke-direct {v0, p0}, Lcom/yopeso/lieferando/adapters/tablet/DishCategoryAdapter$2;-><init>(Lcom/yopeso/lieferando/adapters/tablet/DishCategoryAdapter;)V

    return-object v0
.end method

.method public getItem(I)Lcom/yopeso/lieferando/model/meal/DishCategory;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 68
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/adapters/tablet/DishCategoryAdapter;->getItem(I)Lcom/yopeso/lieferando/model/meal/DishCategory;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 73
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMenuItem(I)Lcom/yopeso/lieferando/model/meal/Menu;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 63
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/tablet/DishCategoryAdapter;->mDisplayedItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/meal/Menu;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 79
    if-nez p2, :cond_0

    .line 80
    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/tablet/DishCategoryAdapter;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 81
    .local v1, "li":Landroid/view/LayoutInflater;
    sget v2, Lcom/yopeso/lieferando/R$layout;->menu_list_item:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 83
    .end local v1    # "li":Landroid/view/LayoutInflater;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/adapters/tablet/DishCategoryAdapter;->getMenuItem(I)Lcom/yopeso/lieferando/model/meal/Menu;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/meal/DishCategory;

    .line 84
    .local v0, "dish":Lcom/yopeso/lieferando/model/meal/DishCategory;
    new-instance v2, Lcom/yopeso/lieferando/adapters/tablet/DishCategoryAdapter$1;

    invoke-direct {v2, p0, v0}, Lcom/yopeso/lieferando/adapters/tablet/DishCategoryAdapter$1;-><init>(Lcom/yopeso/lieferando/adapters/tablet/DishCategoryAdapter;Lcom/yopeso/lieferando/model/meal/DishCategory;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    sget v2, Lcom/yopeso/lieferando/R$id;->MenuName:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/meal/DishCategory;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    return-object p2
.end method

.method public setData(Ljava/util/ArrayList;Z)V
    .locals 3
    .param p2, "isHoliday"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/meal/DishCategory;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "objects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/meal/DishCategory;>;"
    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/tablet/DishCategoryAdapter;->mDisplayedItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 45
    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/tablet/DishCategoryAdapter;->mAvalibleItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 47
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 54
    invoke-virtual {p0}, Lcom/yopeso/lieferando/adapters/tablet/DishCategoryAdapter;->notifyDataSetChanged()V

    .line 55
    return-void

    .line 47
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/meal/DishCategory;

    .line 48
    .local v0, "dish":Lcom/yopeso/lieferando/model/meal/DishCategory;
    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/tablet/DishCategoryAdapter;->mAllDishes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v2, Lcom/yopeso/lieferando/LieferandoApplication;->sCurrentDate:Ljava/util/Date;

    invoke-virtual {v0, v2, p2}, Lcom/yopeso/lieferando/model/meal/DishCategory;->isOpen(Ljava/util/Date;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 50
    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/tablet/DishCategoryAdapter;->mDisplayedItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/tablet/DishCategoryAdapter;->mAvalibleItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
