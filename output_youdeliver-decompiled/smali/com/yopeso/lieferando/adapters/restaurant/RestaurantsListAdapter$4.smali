.class Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$4;
.super Lcom/yopeso/lieferando/adapters/restaurant/CustomFilter;
.source "RestaurantsListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->getFilter()Lcom/yopeso/lieferando/adapters/restaurant/CustomFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$4;->this$0:Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;

    .line 978
    invoke-direct {p0}, Lcom/yopeso/lieferando/adapters/restaurant/CustomFilter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 3
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    .line 989
    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$4;->this$0:Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;

    invoke-static {v2, p1}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->access$8(Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;Ljava/lang/CharSequence;)Ljava/util/ArrayList;

    move-result-object v0

    .line 990
    .local v0, "filteredResults":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/Restaurant;>;"
    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 991
    .local v1, "results":Landroid/widget/Filter$FilterResults;
    iput-object v0, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 992
    return-object v1
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "results"    # Landroid/widget/Filter$FilterResults;

    .prologue
    .line 982
    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$4;->this$0:Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, v1, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mRestaurants:Ljava/util/ArrayList;

    .line 983
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$4;->this$0:Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;

    iget-object v0, v0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mCallback:Lcom/yopeso/lieferando/callback/IRestaurantListCallback;

    check-cast v0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$4;->this$0:Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;

    iget-object v1, v1, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->mRestaurants:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->setRestaurants(Ljava/util/ArrayList;)V

    .line 984
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$4;->this$0:Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->notifyDataSetChanged()V

    .line 985
    return-void
.end method
