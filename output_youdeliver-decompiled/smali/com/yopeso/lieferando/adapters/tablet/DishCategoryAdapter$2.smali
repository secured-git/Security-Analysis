.class Lcom/yopeso/lieferando/adapters/tablet/DishCategoryAdapter$2;
.super Landroid/widget/Filter;
.source "DishCategoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/adapters/tablet/DishCategoryAdapter;->getFilter()Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/adapters/tablet/DishCategoryAdapter;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/adapters/tablet/DishCategoryAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/adapters/tablet/DishCategoryAdapter$2;->this$0:Lcom/yopeso/lieferando/adapters/tablet/DishCategoryAdapter;

    .line 98
    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 5
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    .line 108
    new-instance v2, Landroid/widget/Filter$FilterResults;

    invoke-direct {v2}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 109
    .local v2, "results":Landroid/widget/Filter$FilterResults;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .local v1, "menus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/meal/DishCategory;>;"
    iput-object v1, v2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 111
    if-eqz p1, :cond_3

    .line 112
    iget-object v3, p0, Lcom/yopeso/lieferando/adapters/tablet/DishCategoryAdapter$2;->this$0:Lcom/yopeso/lieferando/adapters/tablet/DishCategoryAdapter;

    invoke-static {v3}, Lcom/yopeso/lieferando/adapters/tablet/DishCategoryAdapter;->access$3(Lcom/yopeso/lieferando/adapters/tablet/DishCategoryAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 122
    :cond_1
    iput-object v1, v2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 123
    return-object v2

    .line 112
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/meal/DishCategory;

    .line 113
    .local v0, "dc":Lcom/yopeso/lieferando/model/meal/DishCategory;
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/yopeso/lieferando/model/meal/DishCategory;->matchesQuery(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 114
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 118
    .end local v0    # "dc":Lcom/yopeso/lieferando/model/meal/DishCategory;
    :cond_3
    iget-object v3, p0, Lcom/yopeso/lieferando/adapters/tablet/DishCategoryAdapter$2;->this$0:Lcom/yopeso/lieferando/adapters/tablet/DishCategoryAdapter;

    invoke-static {v3}, Lcom/yopeso/lieferando/adapters/tablet/DishCategoryAdapter;->access$3(Lcom/yopeso/lieferando/adapters/tablet/DishCategoryAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/meal/DishCategory;

    .line 119
    .restart local v0    # "dc":Lcom/yopeso/lieferando/model/meal/DishCategory;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "results"    # Landroid/widget/Filter$FilterResults;

    .prologue
    .line 102
    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/tablet/DishCategoryAdapter$2;->this$0:Lcom/yopeso/lieferando/adapters/tablet/DishCategoryAdapter;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {v1, v0}, Lcom/yopeso/lieferando/adapters/tablet/DishCategoryAdapter;->access$2(Lcom/yopeso/lieferando/adapters/tablet/DishCategoryAdapter;Ljava/util/ArrayList;)V

    .line 103
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/tablet/DishCategoryAdapter$2;->this$0:Lcom/yopeso/lieferando/adapters/tablet/DishCategoryAdapter;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/adapters/tablet/DishCategoryAdapter;->notifyDataSetChanged()V

    .line 104
    return-void
.end method
