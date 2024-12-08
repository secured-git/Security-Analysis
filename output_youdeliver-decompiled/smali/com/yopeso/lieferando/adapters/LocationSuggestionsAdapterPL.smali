.class public Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapterPL;
.super Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;
.source "LocationSuggestionsAdapterPL.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;Lcom/yopeso/lieferando/callback/LocationSuggestionCallback;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textViewResourceId"    # I
    .param p4, "callback"    # Lcom/yopeso/lieferando/callback/LocationSuggestionCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/yopeso/lieferando/model/LocationSuggestion;",
            ">;",
            "Lcom/yopeso/lieferando/callback/LocationSuggestionCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 16
    .local p3, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/yopeso/lieferando/model/LocationSuggestion;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Lcom/yopeso/lieferando/callback/LocationSuggestionCallback;)V

    .line 17
    return-void
.end method

.method static synthetic access$0(Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapterPL;Ljava/lang/CharSequence;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapterPL;->getFilteredResults(Ljava/lang/CharSequence;)Ljava/util/ArrayList;

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
            "Lcom/yopeso/lieferando/model/LocationSuggestion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/LocationSuggestion;>;"
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_1

    .line 45
    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapterPL;->mAllSuggestions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 51
    :cond_1
    return-object v0

    .line 45
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yopeso/lieferando/model/LocationSuggestion;

    .line 46
    .local v1, "suggestion":Lcom/yopeso/lieferando/model/LocationSuggestion;
    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/yopeso/lieferando/util/StringUtils;->removePlLetters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/yopeso/lieferando/util/StringUtils;->removePlLetters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 47
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapterPL$1;

    invoke-direct {v0, p0}, Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapterPL$1;-><init>(Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapterPL;)V

    return-object v0
.end method
