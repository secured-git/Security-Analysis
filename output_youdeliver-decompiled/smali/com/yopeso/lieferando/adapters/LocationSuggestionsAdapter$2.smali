.class Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter$2;
.super Landroid/widget/Filter;
.source "LocationSuggestionsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;->getFilter()Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter$2;->this$0:Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;

    .line 94
    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 3
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    .line 106
    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter$2;->this$0:Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;

    invoke-static {v2, p1}, Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;->access$0(Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;Ljava/lang/CharSequence;)Ljava/util/ArrayList;

    move-result-object v0

    .line 107
    .local v0, "filteredResults":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/LocationSuggestion;>;"
    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 108
    .local v1, "results":Landroid/widget/Filter$FilterResults;
    iput-object v0, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 109
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 110
    return-object v1
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "results"    # Landroid/widget/Filter$FilterResults;

    .prologue
    .line 99
    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter$2;->this$0:Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, v1, Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;->mSuggestions:Ljava/util/List;

    .line 100
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter$2;->this$0:Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;

    iget-object v1, v0, Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;->mCallback:Lcom/yopeso/lieferando/callback/LocationSuggestionCallback;

    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter$2;->this$0:Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;

    iget-object v0, v0, Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;->mSuggestions:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-interface {v1, v0}, Lcom/yopeso/lieferando/callback/LocationSuggestionCallback;->setLocationSuggestions(Ljava/util/ArrayList;)V

    .line 101
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter$2;->this$0:Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;->notifyDataSetChanged()V

    .line 102
    return-void
.end method
