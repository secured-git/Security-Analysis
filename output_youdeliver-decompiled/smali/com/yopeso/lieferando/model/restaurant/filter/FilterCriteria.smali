.class public final Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;
.super Ljava/lang/Object;
.source "FilterCriteria.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Categories;,
        Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Category;,
        Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Filters;,
        Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;
    }
.end annotation


# static fields
.field private static sCriteria:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;


# instance fields
.field private mCategoriesFilter:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/restaurant/filter/CategoryFilter;",
            ">;"
        }
    .end annotation
.end field

.field private mCategoriesFilterForLocation:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/restaurant/filter/CategoryFilter;",
            ">;"
        }
    .end annotation
.end field

.field private mCategoriesFilterForLocation_STATIC:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/restaurant/filter/CategoryFilter;",
            ">;"
        }
    .end annotation
.end field

.field private mCategoriesFilter_STATIC:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/restaurant/filter/CategoryFilter;",
            ">;"
        }
    .end annotation
.end field

.field private mHighestDeliveryCost:F

.field private mHighestMinCost:F

.field private mMatching:Ljava/lang/String;

.field private mMaxDeliveryCost:F

.field private mMaxOrderCost:F

.field private mMinDeliveryCost:F

.field private mMinOrderCost:F

.field private mOnlyOnline:Z

.field private mOnlyOpened:Z

.field private mOnlyStample:Z

.field private mOrdering:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

.field private orderings:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->mCategoriesFilter:Ljava/util/ArrayList;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->mCategoriesFilter_STATIC:Ljava/util/ArrayList;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->mCategoriesFilterForLocation:Ljava/util/ArrayList;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->mCategoriesFilterForLocation_STATIC:Ljava/util/ArrayList;

    .line 18
    iput-boolean v2, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->mOnlyOpened:Z

    .line 19
    iput-boolean v2, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->mOnlyOnline:Z

    .line 20
    iput-boolean v2, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->mOnlyStample:Z

    .line 21
    sget-object v0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->NONE:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    iput-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->mOrdering:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->mMatching:Ljava/lang/String;

    .line 24
    iput v1, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->mMinOrderCost:F

    .line 25
    iput v1, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->mMaxOrderCost:F

    .line 27
    iput v1, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->mMinDeliveryCost:F

    .line 28
    iput v1, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->mMaxDeliveryCost:F

    .line 33
    iput v1, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->mHighestMinCost:F

    .line 37
    iput v1, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->mHighestDeliveryCost:F

    .line 43
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->orderings:Ljava/util/HashSet;

    .line 48
    return-void
.end method

.method public static getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->sCriteria:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    invoke-direct {v0}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;-><init>()V

    sput-object v0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->sCriteria:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    .line 54
    :cond_0
    sget-object v0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->sCriteria:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    return-object v0
.end method


# virtual methods
.method public containsCategory(Ljava/lang/String;)Z
    .locals 2
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 179
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->mCategoriesFilterForLocation:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 187
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 183
    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->mCategoriesFilterForLocation_STATIC:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yopeso/lieferando/model/restaurant/filter/CategoryFilter;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/CategoryFilter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->mCategoriesFilterForLocation:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yopeso/lieferando/model/restaurant/filter/CategoryFilter;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/CategoryFilter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 184
    const/4 v1, 0x1

    goto :goto_1

    .line 179
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getCategoriesFilter()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/restaurant/filter/CategoryFilter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->mCategoriesFilter:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCathegoriesForTracking()Ljava/lang/String;
    .locals 9

    .prologue
    .line 205
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 207
    .local v3, "cousines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget-object v6, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->mCategoriesFilterForLocation:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v5, v6, :cond_0

    .line 213
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 215
    new-instance v1, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Categories;

    const/4 v6, 0x0

    invoke-direct {v1, p0, v6}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Categories;-><init>(Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Categories;)V

    .line 216
    .local v1, "categories":Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Categories;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    new-array v2, v6, [Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Category;

    .line 217
    .local v2, "categoriesArray":[Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Category;
    const/4 v0, 0x0

    .line 219
    .local v0, "cat":Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Category;
    const/4 v5, 0x0

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lt v5, v6, :cond_2

    .line 223
    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Categories;->setCategories([Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Category;)V

    .line 224
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    .line 225
    .local v4, "gson":Lcom/google/gson/Gson;
    instance-of v6, v4, Lcom/google/gson/Gson;

    if-nez v6, :cond_3

    invoke-virtual {v4, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .end local v4    # "gson":Lcom/google/gson/Gson;
    :goto_2
    return-object v6

    .line 208
    .end local v0    # "cat":Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Category;
    .end local v1    # "categories":Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Categories;
    .end local v2    # "categoriesArray":[Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Category;
    :cond_0
    iget-object v6, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->mCategoriesFilterForLocation:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/yopeso/lieferando/model/restaurant/filter/CategoryFilter;

    invoke-virtual {v6}, Lcom/yopeso/lieferando/model/restaurant/filter/CategoryFilter;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 209
    iget-object v6, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->mCategoriesFilterForLocation:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/yopeso/lieferando/model/restaurant/filter/CategoryFilter;

    invoke-virtual {v6}, Lcom/yopeso/lieferando/model/restaurant/filter/CategoryFilter;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, " / "

    const-string v8, "_"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v7, " "

    const-string v8, "-"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 220
    .restart local v0    # "cat":Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Category;
    .restart local v1    # "categories":Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Categories;
    .restart local v2    # "categoriesArray":[Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Category;
    :cond_2
    new-instance v0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Category;

    .end local v0    # "cat":Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Category;
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v0, p0, v6}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Category;-><init>(Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;Ljava/lang/String;)V

    .line 221
    .restart local v0    # "cat":Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Category;
    aput-object v0, v2, v5

    .line 219
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 225
    .restart local v4    # "gson":Lcom/google/gson/Gson;
    :cond_3
    check-cast v4, Lcom/google/gson/Gson;

    .end local v4    # "gson":Lcom/google/gson/Gson;
    invoke-static {v4, v1}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->toJson(Lcom/google/gson/Gson;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_2
.end method

.method public getFilterForTracking()Ljava/lang/String;
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 229
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 230
    .local v1, "filters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-boolean v4, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->mOnlyOpened:Z

    if-eqz v4, :cond_0

    .line 231
    const-string v4, "openRestaurantsOnly"

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    :cond_0
    iget-boolean v4, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->mOnlyOnline:Z

    if-eqz v4, :cond_1

    .line 234
    const-string v4, "onlinePaymentOnly"

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    :cond_1
    iget-boolean v4, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->mOnlyStample:Z

    if-eqz v4, :cond_2

    .line 237
    const-string v4, "myStamps"

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    :cond_2
    iget v4, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->mMinDeliveryCost:F

    float-to-double v4, v4

    cmpl-double v4, v4, v6

    if-nez v4, :cond_3

    iget v4, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->mHighestDeliveryCost:F

    iget v5, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->mMaxDeliveryCost:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_4

    .line 240
    :cond_3
    const-string v4, "deliverCosts"

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    :cond_4
    iget v4, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->mMinOrderCost:F

    float-to-double v4, v4

    cmpl-double v4, v4, v6

    if-nez v4, :cond_5

    iget v4, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->mHighestMinCost:F

    iget v5, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->mMaxOrderCost:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_6

    .line 243
    :cond_5
    const-string v4, "minCosts"

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    :cond_6
    iget-object v4, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->orderings:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_8

    .line 259
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 260
    const/4 v4, 0x0

    .line 266
    :goto_1
    return-object v4

    .line 247
    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    .line 248
    .local v3, "ordering":Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;
    sget-object v5, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->NONE:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    if-eq v5, v3, :cond_7

    .line 249
    sget-object v5, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->NEWCUSTOMER:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    if-ne v5, v3, :cond_9

    .line 250
    const-string v5, "newCustomerDiscount"

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 253
    :cond_9
    sget-object v5, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->REBATE:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    if-ne v5, v3, :cond_7

    .line 254
    const-string v5, "discount"

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 263
    .end local v3    # "ordering":Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;
    :cond_a
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 264
    new-instance v0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Filters;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-direct {v0, p0, v4}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Filters;-><init>(Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;[Ljava/lang/String;)V

    .line 265
    .local v0, "filterData":Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Filters;
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 266
    .local v2, "gson":Lcom/google/gson/Gson;
    instance-of v4, v2, Lcom/google/gson/Gson;

    if-nez v4, :cond_b

    invoke-virtual {v2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_b
    check-cast v2, Lcom/google/gson/Gson;

    .end local v2    # "gson":Lcom/google/gson/Gson;
    invoke-static {v2, v0}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->toJson(Lcom/google/gson/Gson;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method public getHighestDeliveryCost()F
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->mHighestDeliveryCost:F

    return v0
.end method

.method public getHighestMinCost()F
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->mHighestMinCost:F

    return v0
.end method

.method public getMatching()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->mMatching:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxDeliveryCost()F
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->mMaxDeliveryCost:F

    return v0
.end method

.method public getMaxOrderCost()F
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->mMaxOrderCost:F

    return v0
.end method

.method public getMinDeliveryCost()F
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->mMinDeliveryCost:F

    return v0
.end method

.method public getMinOrderCost()F
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->mMinOrderCost:F

    return v0
.end method

.method public getOrdering()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->mOrdering:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    return-object v0
.end method

.method public getOrderings()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->orderings:Ljava/util/HashSet;

    return-object v0
.end method

.method public getmCategoriesFilterForLocation()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/restaurant/filter/CategoryFilter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 368
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->mCategoriesFilterForLocation:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getmCategoriesFilterForLocation_STATIC()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/restaurant/filter/CategoryFilter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 386
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->mCategoriesFilterForLocation_STATIC:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getmCategoriesFilter_STATIC()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/restaurant/filter/CategoryFilter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 377
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->mCategoriesFilter_STATIC:Ljava/util/ArrayList;

    return-object v0
.end method

.method public inCategory(Lcom/yopeso/lieferando/model/restaurant/filter/CategoryFilter;)Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;
    .locals 1
    .param p1, "category"    # Lcom/yopeso/lieferando/model/restaurant/filter/CategoryFilter;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->mCategoriesFilterForLocation:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    return-object p0
.end method

.method public isCategoryFilterEnabled()Z
    .locals 3

    .prologue
    .line 359
    iget-object v1, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->mCategoriesFilterForLocation:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 364
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 359
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/restaurant/filter/CategoryFilter;

    .line 360
    .local v0, "filter":Lcom/yopeso/lieferando/model/restaurant/filter/CategoryFilter;
    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/restaurant/filter/CategoryFilter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 361
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isOnlyOnline()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->mOnlyOnline:Z

    return v0
.end method

.method public isOnlyOpened()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->mOnlyOpened:Z

    return v0
.end method

.method public isOnlyStample()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->mOnlyStample:Z

    return v0
.end method

.method public makeFilterDefault()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 315
    iput-boolean v4, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->mOnlyOnline:Z

    .line 316
    iput-boolean v4, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->mOnlyOpened:Z

    .line 317
    iput-boolean v4, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->mOnlyStample:Z

    .line 318
    sget-object v1, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->NONE:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    iput-object v1, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->mOrdering:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    .line 319
    iget-object v1, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->orderings:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 320
    iget-object v1, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->orderings:Ljava/util/HashSet;

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->NONE:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 321
    iget-object v1, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->mCategoriesFilter:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 324
    const-string v1, ""

    iput-object v1, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->mMatching:Ljava/lang/String;

    .line 325
    iput v3, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->mMinOrderCost:F

    .line 326
    iput v3, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->mMaxOrderCost:F

    .line 327
    iput v3, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->mHighestMinCost:F

    .line 328
    iput v3, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->mMinDeliveryCost:F

    .line 329
    iput v3, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->mMaxDeliveryCost:F

    .line 330
    iput v3, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->mHighestDeliveryCost:F

    .line 331
    return-void

    .line 321
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/restaurant/filter/CategoryFilter;

    .line 322
    .local v0, "f":Lcom/yopeso/lieferando/model/restaurant/filter/CategoryFilter;
    invoke-virtual {v0, v4}, Lcom/yopeso/lieferando/model/restaurant/filter/CategoryFilter;->setEnabled(Z)V

    goto :goto_0
.end method

.method public populateFilters([Ljava/lang/String;)V
    .locals 5
    .param p1, "filters"    # [Ljava/lang/String;

    .prologue
    .line 340
    iget-object v1, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->mCategoriesFilter:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 341
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 344
    return-void

    .line 341
    :cond_0
    aget-object v0, p1, v1

    .line 342
    .local v0, "filter":Ljava/lang/String;
    iget-object v3, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->mCategoriesFilter:Ljava/util/ArrayList;

    new-instance v4, Lcom/yopeso/lieferando/model/restaurant/filter/CategoryFilter;

    invoke-direct {v4, v0}, Lcom/yopeso/lieferando/model/restaurant/filter/CategoryFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public populateFilters_STATIC([Ljava/lang/String;)V
    .locals 5
    .param p1, "filters"    # [Ljava/lang/String;

    .prologue
    .line 347
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 350
    return-void

    .line 347
    :cond_0
    aget-object v0, p1, v1

    .line 348
    .local v0, "filter":Ljava/lang/String;
    iget-object v3, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->mCategoriesFilter_STATIC:Ljava/util/ArrayList;

    new-instance v4, Lcom/yopeso/lieferando/model/restaurant/filter/CategoryFilter;

    invoke-direct {v4, v0}, Lcom/yopeso/lieferando/model/restaurant/filter/CategoryFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public resetFilters()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 296
    iput-boolean v4, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->mOnlyOnline:Z

    .line 297
    iput-boolean v4, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->mOnlyOpened:Z

    .line 298
    iput-boolean v4, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->mOnlyStample:Z

    .line 299
    sget-object v1, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->NONE:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    iput-object v1, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->mOrdering:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    .line 300
    iget-object v1, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->orderings:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 301
    iget-object v1, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->mCategoriesFilter:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 304
    const-string v1, ""

    iput-object v1, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->mMatching:Ljava/lang/String;

    .line 305
    iput v3, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->mMinOrderCost:F

    .line 306
    iput v3, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->mMaxOrderCost:F

    .line 307
    iput v3, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->mMinDeliveryCost:F

    .line 308
    iput v3, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->mMaxDeliveryCost:F

    .line 309
    return-void

    .line 301
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/restaurant/filter/CategoryFilter;

    .line 302
    .local v0, "f":Lcom/yopeso/lieferando/model/restaurant/filter/CategoryFilter;
    invoke-virtual {v0, v4}, Lcom/yopeso/lieferando/model/restaurant/filter/CategoryFilter;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setCategoriesFilter(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/restaurant/filter/CategoryFilter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p1, "categoriesFilter":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/filter/CategoryFilter;>;"
    iput-object p1, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->mCategoriesFilter:Ljava/util/ArrayList;

    .line 96
    return-void
.end method

.method public setDeliveryCost(FF)Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;
    .locals 0
    .param p1, "MinDeliveryCost"    # F
    .param p2, "MaxDeliveryCost"    # F

    .prologue
    .line 126
    iput p1, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->mMinDeliveryCost:F

    .line 127
    iput p2, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->mMaxDeliveryCost:F

    .line 128
    return-object p0
.end method

.method public setHighestDeliveryCost(F)V
    .locals 0
    .param p1, "highestDeliveryCost"    # F

    .prologue
    .line 144
    iput p1, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->mHighestDeliveryCost:F

    .line 145
    iput p1, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->mMaxDeliveryCost:F

    .line 146
    return-void
.end method

.method public setHighestMinCost(F)V
    .locals 0
    .param p1, "HighestMinCost"    # F

    .prologue
    .line 173
    iput p1, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->mHighestMinCost:F

    .line 174
    iput p1, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->mMaxOrderCost:F

    .line 175
    return-void
.end method

.method public setMatching(Ljava/lang/String;)Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;
    .locals 0
    .param p1, "matching"    # Ljava/lang/String;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->mMatching:Ljava/lang/String;

    .line 116
    return-object p0
.end method

.method public setMinCost(FF)Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;
    .locals 0
    .param p1, "MinOrderCost"    # F
    .param p2, "MaxOrderCost"    # F

    .prologue
    .line 155
    iput p1, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->mMinOrderCost:F

    .line 156
    iput p2, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->mMaxOrderCost:F

    .line 157
    return-object p0
.end method

.method public setOnlyOnline(Z)Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;
    .locals 0
    .param p1, "onlyOnline"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->mOnlyOnline:Z

    .line 87
    return-object p0
.end method

.method public setOnlyOpened(Z)Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;
    .locals 0
    .param p1, "onlyOpened"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->mOnlyOpened:Z

    .line 69
    return-object p0
.end method

.method public setOnlyStample(Z)Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;
    .locals 0
    .param p1, "onlyStample"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->mOnlyStample:Z

    .line 78
    return-object p0
.end method

.method public setOrdering(Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;)Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;
    .locals 0
    .param p1, "ordering"    # Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->mOrdering:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    .line 107
    return-object p0
.end method

.method public setmCategoriesFilterForLocation(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/restaurant/filter/CategoryFilter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 373
    .local p1, "mCategoriesFilterForLocation":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/filter/CategoryFilter;>;"
    iput-object p1, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->mCategoriesFilterForLocation:Ljava/util/ArrayList;

    .line 374
    return-void
.end method

.method public setmCategoriesFilterForLocation_STATIC(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/restaurant/filter/CategoryFilter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 391
    .local p1, "mCategoriesFilterForLocation_STATIC":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/filter/CategoryFilter;>;"
    iput-object p1, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->mCategoriesFilterForLocation_STATIC:Ljava/util/ArrayList;

    .line 392
    return-void
.end method

.method public setmCategoriesFilter_STATIC(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/restaurant/filter/CategoryFilter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 382
    .local p1, "mCategoriesFilter_STATIC":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/restaurant/filter/CategoryFilter;>;"
    iput-object p1, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->mCategoriesFilter_STATIC:Ljava/util/ArrayList;

    .line 383
    return-void
.end method
