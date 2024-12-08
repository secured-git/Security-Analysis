.class public Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "LocationSuggestionsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/yopeso/lieferando/model/LocationSuggestion;",
        ">;"
    }
.end annotation


# instance fields
.field protected mAllSuggestions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yopeso/lieferando/model/LocationSuggestion;",
            ">;"
        }
    .end annotation
.end field

.field protected mCallback:Lcom/yopeso/lieferando/callback/LocationSuggestionCallback;

.field protected mContext:Landroid/content/Context;

.field protected mSuggestions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yopeso/lieferando/model/LocationSuggestion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;Lcom/yopeso/lieferando/callback/LocationSuggestionCallback;)V
    .locals 1
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
    .line 36
    .local p3, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/yopeso/lieferando/model/LocationSuggestion;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;->mSuggestions:Ljava/util/List;

    .line 37
    iput-object p1, p0, Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;->mContext:Landroid/content/Context;

    .line 38
    iput-object p3, p0, Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;->mSuggestions:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;->mAllSuggestions:Ljava/util/List;

    .line 40
    iput-object p4, p0, Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;->mCallback:Lcom/yopeso/lieferando/callback/LocationSuggestionCallback;

    .line 41
    return-void
.end method

.method static synthetic access$0(Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;Ljava/lang/CharSequence;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;->getFilteredResults(Ljava/lang/CharSequence;)Ljava/util/ArrayList;

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
    const/4 v3, 0x2

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/LocationSuggestion;>;"
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 119
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lt v2, v3, :cond_1

    .line 120
    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;->mAllSuggestions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 138
    :cond_1
    return-object v0

    .line 120
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yopeso/lieferando/model/LocationSuggestion;

    .line 122
    .local v1, "suggestion":Lcom/yopeso/lieferando/model/LocationSuggestion;
    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getPlz()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 123
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 128
    .end local v1    # "suggestion":Lcom/yopeso/lieferando/model/LocationSuggestion;
    :cond_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-le v2, v3, :cond_1

    .line 129
    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;->mAllSuggestions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yopeso/lieferando/model/LocationSuggestion;

    .line 131
    .restart local v1    # "suggestion":Lcom/yopeso/lieferando/model/LocationSuggestion;
    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getPlz()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 132
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method


# virtual methods
.method public clearSuggestons()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;->mAllSuggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 150
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;->mSuggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getElementById(I)Lcom/yopeso/lieferando/model/LocationSuggestion;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 81
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;->mSuggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    .line 82
    const/4 v0, 0x0

    .line 84
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;->mSuggestions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/LocationSuggestion;

    goto :goto_0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 94
    new-instance v0, Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter$2;

    invoke-direct {v0, p0}, Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter$2;-><init>(Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;)V

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 45
    if-nez p2, :cond_0

    .line 46
    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 47
    .local v0, "li":Landroid/view/LayoutInflater;
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 48
    sget v2, Lcom/yopeso/lieferando/R$layout;->suggestion_city_item:I

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 53
    .end local v0    # "li":Landroid/view/LayoutInflater;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;->mSuggestions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gt v2, p1, :cond_2

    .line 77
    :goto_1
    return-object p2

    .line 50
    .restart local v0    # "li":Landroid/view/LayoutInflater;
    :cond_1
    sget v2, Lcom/yopeso/lieferando/R$layout;->suggestion_list_item:I

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 56
    .end local v0    # "li":Landroid/view/LayoutInflater;
    :cond_2
    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;->mSuggestions:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yopeso/lieferando/model/LocationSuggestion;

    .line 57
    .local v1, "ls":Lcom/yopeso/lieferando/model/LocationSuggestion;
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 58
    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getPlz()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getPlz()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    if-eq v2, v3, :cond_3

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getCityId()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 59
    sget v2, Lcom/yopeso/lieferando/R$id;->CityName:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getPlz()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    :goto_2
    new-instance v2, Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter$1;

    invoke-direct {v2, p0, v1}, Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter$1;-><init>(Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;Lcom/yopeso/lieferando/model/LocationSuggestion;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 61
    :cond_3
    sget v2, Lcom/yopeso/lieferando/R$id;->CityName:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 65
    :cond_4
    sget v2, Lcom/yopeso/lieferando/R$id;->PostalCode:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getPlz()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    sget v2, Lcom/yopeso/lieferando/R$id;->CityName:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/LocationSuggestion;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public isFilteredLocationEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p1, "plz"    # Ljava/lang/String;

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;->getFilteredResults(Ljava/lang/CharSequence;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isListEmpty()Z
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;->mAllSuggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method
