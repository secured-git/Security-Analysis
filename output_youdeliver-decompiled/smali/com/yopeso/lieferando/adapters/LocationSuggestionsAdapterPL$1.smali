.class Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapterPL$1;
.super Landroid/widget/Filter;
.source "LocationSuggestionsAdapterPL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapterPL;->getFilter()Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapterPL;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapterPL;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapterPL$1;->this$0:Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapterPL;

    .line 21
    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 3
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    .line 33
    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapterPL$1;->this$0:Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapterPL;

    invoke-static {v2, p1}, Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapterPL;->access$0(Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapterPL;Ljava/lang/CharSequence;)Ljava/util/ArrayList;

    move-result-object v0

    .line 34
    .local v0, "filteredResults":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/LocationSuggestion;>;"
    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 35
    .local v1, "results":Landroid/widget/Filter$FilterResults;
    iput-object v0, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 36
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 37
    return-object v1
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "results"    # Landroid/widget/Filter$FilterResults;

    .prologue
    .line 26
    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapterPL$1;->this$0:Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapterPL;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, v1, Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapterPL;->mSuggestions:Ljava/util/List;

    .line 27
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapterPL$1;->this$0:Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapterPL;

    iget-object v1, v0, Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapterPL;->mCallback:Lcom/yopeso/lieferando/callback/LocationSuggestionCallback;

    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapterPL$1;->this$0:Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapterPL;

    iget-object v0, v0, Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapterPL;->mSuggestions:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-interface {v1, v0}, Lcom/yopeso/lieferando/callback/LocationSuggestionCallback;->setLocationSuggestions(Ljava/util/ArrayList;)V

    .line 28
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapterPL$1;->this$0:Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapterPL;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapterPL;->notifyDataSetChanged()V

    .line 29
    return-void
.end method
