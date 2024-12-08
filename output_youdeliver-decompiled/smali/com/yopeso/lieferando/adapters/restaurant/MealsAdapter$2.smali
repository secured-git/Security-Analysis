.class Lcom/yopeso/lieferando/adapters/restaurant/MealsAdapter$2;
.super Landroid/widget/Filter;
.source "MealsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/adapters/restaurant/MealsAdapter;->getFilter()Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/adapters/restaurant/MealsAdapter;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/adapters/restaurant/MealsAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealsAdapter$2;->this$0:Lcom/yopeso/lieferando/adapters/restaurant/MealsAdapter;

    .line 178
    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 2
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    .line 188
    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 189
    .local v0, "results":Landroid/widget/Filter$FilterResults;
    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealsAdapter$2;->this$0:Lcom/yopeso/lieferando/adapters/restaurant/MealsAdapter;

    invoke-static {v1, p1}, Lcom/yopeso/lieferando/adapters/restaurant/MealsAdapter;->access$2(Lcom/yopeso/lieferando/adapters/restaurant/MealsAdapter;Ljava/lang/CharSequence;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 190
    return-object v0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "results"    # Landroid/widget/Filter$FilterResults;

    .prologue
    .line 182
    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealsAdapter$2;->this$0:Lcom/yopeso/lieferando/adapters/restaurant/MealsAdapter;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {v1, v0}, Lcom/yopeso/lieferando/adapters/restaurant/MealsAdapter;->access$1(Lcom/yopeso/lieferando/adapters/restaurant/MealsAdapter;Ljava/util/ArrayList;)V

    .line 183
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/MealsAdapter$2;->this$0:Lcom/yopeso/lieferando/adapters/restaurant/MealsAdapter;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/adapters/restaurant/MealsAdapter;->notifyDataSetChanged()V

    .line 184
    return-void
.end method
