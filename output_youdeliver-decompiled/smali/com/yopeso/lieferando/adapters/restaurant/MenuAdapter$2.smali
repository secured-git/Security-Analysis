.class Lcom/yopeso/lieferando/adapters/restaurant/MenuAdapter$2;
.super Landroid/widget/Filter;
.source "MenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/adapters/restaurant/MenuAdapter;->getFilter()Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/adapters/restaurant/MenuAdapter;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/adapters/restaurant/MenuAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/adapters/restaurant/MenuAdapter$2;->this$0:Lcom/yopeso/lieferando/adapters/restaurant/MenuAdapter;

    .line 62
    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 3
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    .line 72
    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/restaurant/MenuAdapter$2;->this$0:Lcom/yopeso/lieferando/adapters/restaurant/MenuAdapter;

    invoke-static {v2, p1}, Lcom/yopeso/lieferando/adapters/restaurant/MenuAdapter;->access$3(Lcom/yopeso/lieferando/adapters/restaurant/MenuAdapter;Ljava/lang/CharSequence;)Ljava/util/ArrayList;

    move-result-object v0

    .line 73
    .local v0, "filteredResults":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/meal/DishCategory;>;"
    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 74
    .local v1, "results":Landroid/widget/Filter$FilterResults;
    iput-object v0, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 75
    return-object v1
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "results"    # Landroid/widget/Filter$FilterResults;

    .prologue
    .line 66
    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/restaurant/MenuAdapter$2;->this$0:Lcom/yopeso/lieferando/adapters/restaurant/MenuAdapter;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {v1, v0}, Lcom/yopeso/lieferando/adapters/restaurant/MenuAdapter;->access$2(Lcom/yopeso/lieferando/adapters/restaurant/MenuAdapter;Ljava/util/ArrayList;)V

    .line 67
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/MenuAdapter$2;->this$0:Lcom/yopeso/lieferando/adapters/restaurant/MenuAdapter;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/adapters/restaurant/MenuAdapter;->notifyDataSetChanged()V

    .line 68
    return-void
.end method
