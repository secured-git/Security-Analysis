.class Lcom/yopeso/lieferando/adapters/StreetSuggestionAdapter$2;
.super Landroid/widget/Filter;
.source "StreetSuggestionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/adapters/StreetSuggestionAdapter;->getFilter()Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/adapters/StreetSuggestionAdapter;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/adapters/StreetSuggestionAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/adapters/StreetSuggestionAdapter$2;->this$0:Lcom/yopeso/lieferando/adapters/StreetSuggestionAdapter;

    .line 68
    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 3
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    .line 80
    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/StreetSuggestionAdapter$2;->this$0:Lcom/yopeso/lieferando/adapters/StreetSuggestionAdapter;

    invoke-static {v2, p1}, Lcom/yopeso/lieferando/adapters/StreetSuggestionAdapter;->access$1(Lcom/yopeso/lieferando/adapters/StreetSuggestionAdapter;Ljava/lang/CharSequence;)Ljava/util/ArrayList;

    move-result-object v0

    .line 81
    .local v0, "filteredResults":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/user/Street;>;"
    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 82
    .local v1, "results":Landroid/widget/Filter$FilterResults;
    iput-object v0, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 83
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 84
    return-object v1
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "results"    # Landroid/widget/Filter$FilterResults;

    .prologue
    .line 73
    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/StreetSuggestionAdapter$2;->this$0:Lcom/yopeso/lieferando/adapters/StreetSuggestionAdapter;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, v1, Lcom/yopeso/lieferando/adapters/StreetSuggestionAdapter;->mSuggestions:Ljava/util/List;

    .line 74
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/StreetSuggestionAdapter$2;->this$0:Lcom/yopeso/lieferando/adapters/StreetSuggestionAdapter;

    invoke-static {v0}, Lcom/yopeso/lieferando/adapters/StreetSuggestionAdapter;->access$0(Lcom/yopeso/lieferando/adapters/StreetSuggestionAdapter;)Lcom/yopeso/lieferando/callback/StreetSuggestionCallback;

    move-result-object v1

    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/StreetSuggestionAdapter$2;->this$0:Lcom/yopeso/lieferando/adapters/StreetSuggestionAdapter;

    iget-object v0, v0, Lcom/yopeso/lieferando/adapters/StreetSuggestionAdapter;->mSuggestions:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-interface {v1, v0}, Lcom/yopeso/lieferando/callback/StreetSuggestionCallback;->setStreetSuggestions(Ljava/util/ArrayList;)V

    .line 75
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/StreetSuggestionAdapter$2;->this$0:Lcom/yopeso/lieferando/adapters/StreetSuggestionAdapter;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/adapters/StreetSuggestionAdapter;->notifyDataSetChanged()V

    .line 76
    return-void
.end method
