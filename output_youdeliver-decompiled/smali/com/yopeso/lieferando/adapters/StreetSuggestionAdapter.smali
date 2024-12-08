.class public Lcom/yopeso/lieferando/adapters/StreetSuggestionAdapter;
.super Landroid/widget/ArrayAdapter;
.source "StreetSuggestionAdapter.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "DefaultLocale"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/yopeso/lieferando/model/user/Street;",
        ">;"
    }
.end annotation


# instance fields
.field protected mAllSuggestions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yopeso/lieferando/model/user/Street;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Lcom/yopeso/lieferando/callback/StreetSuggestionCallback;

.field private mContext:Landroid/content/Context;

.field protected mSuggestions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yopeso/lieferando/model/user/Street;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;Lcom/yopeso/lieferando/callback/StreetSuggestionCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textViewResourceId"    # I
    .param p4, "callback"    # Lcom/yopeso/lieferando/callback/StreetSuggestionCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/yopeso/lieferando/model/user/Street;",
            ">;",
            "Lcom/yopeso/lieferando/callback/StreetSuggestionCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 34
    .local p3, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/yopeso/lieferando/model/user/Street;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/adapters/StreetSuggestionAdapter;->mSuggestions:Ljava/util/List;

    .line 35
    iput-object p1, p0, Lcom/yopeso/lieferando/adapters/StreetSuggestionAdapter;->mContext:Landroid/content/Context;

    .line 36
    iput-object p3, p0, Lcom/yopeso/lieferando/adapters/StreetSuggestionAdapter;->mSuggestions:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/yopeso/lieferando/adapters/StreetSuggestionAdapter;->mAllSuggestions:Ljava/util/List;

    .line 38
    iput-object p4, p0, Lcom/yopeso/lieferando/adapters/StreetSuggestionAdapter;->mCallback:Lcom/yopeso/lieferando/callback/StreetSuggestionCallback;

    .line 39
    return-void
.end method

.method static synthetic access$0(Lcom/yopeso/lieferando/adapters/StreetSuggestionAdapter;)Lcom/yopeso/lieferando/callback/StreetSuggestionCallback;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/StreetSuggestionAdapter;->mCallback:Lcom/yopeso/lieferando/callback/StreetSuggestionCallback;

    return-object v0
.end method

.method static synthetic access$1(Lcom/yopeso/lieferando/adapters/StreetSuggestionAdapter;Ljava/lang/CharSequence;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/adapters/StreetSuggestionAdapter;->getFilteredResults(Ljava/lang/CharSequence;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private getFilteredResults(Ljava/lang/CharSequence;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/user/Street;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/user/Street;>;"
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_1

    .line 93
    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/StreetSuggestionAdapter;->mAllSuggestions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 99
    :cond_1
    return-object v0

    .line 93
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yopeso/lieferando/model/user/Street;

    .line 94
    .local v1, "suggestion":Lcom/yopeso/lieferando/model/user/Street;
    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/Street;->getStreet()Ljava/lang/String;

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

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 95
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public getElementById(I)Lcom/yopeso/lieferando/model/user/Street;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 63
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/StreetSuggestionAdapter;->mSuggestions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/user/Street;

    return-object v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lcom/yopeso/lieferando/adapters/StreetSuggestionAdapter$2;

    invoke-direct {v0, p0}, Lcom/yopeso/lieferando/adapters/StreetSuggestionAdapter$2;-><init>(Lcom/yopeso/lieferando/adapters/StreetSuggestionAdapter;)V

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 43
    if-nez p2, :cond_0

    .line 44
    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/StreetSuggestionAdapter;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 45
    .local v0, "li":Landroid/view/LayoutInflater;
    sget v2, Lcom/yopeso/lieferando/R$layout;->suggestion_city_item:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 47
    .end local v0    # "li":Landroid/view/LayoutInflater;
    :cond_0
    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/StreetSuggestionAdapter;->mSuggestions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, p1, :cond_1

    .line 48
    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/StreetSuggestionAdapter;->mSuggestions:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yopeso/lieferando/model/user/Street;

    .line 49
    .local v1, "street":Lcom/yopeso/lieferando/model/user/Street;
    sget v2, Lcom/yopeso/lieferando/R$id;->CityName:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/Street;->getStreet()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    new-instance v2, Lcom/yopeso/lieferando/adapters/StreetSuggestionAdapter$1;

    invoke-direct {v2, p0, v1}, Lcom/yopeso/lieferando/adapters/StreetSuggestionAdapter$1;-><init>(Lcom/yopeso/lieferando/adapters/StreetSuggestionAdapter;Lcom/yopeso/lieferando/model/user/Street;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    .end local v1    # "street":Lcom/yopeso/lieferando/model/user/Street;
    :cond_1
    return-object p2
.end method
