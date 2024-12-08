.class Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Categories;
.super Ljava/lang/Object;
.source "FilterCriteria.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Categories"
.end annotation


# instance fields
.field private categories:[Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Category;

.field final synthetic this$0:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;


# direct methods
.method private constructor <init>(Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;)V
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Categories;->this$0:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Categories;)V
    .locals 0

    .prologue
    .line 271
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Categories;-><init>(Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;)V

    return-void
.end method


# virtual methods
.method public setCategories([Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Category;)V
    .locals 0
    .param p1, "categories"    # [Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Category;

    .prologue
    .line 274
    iput-object p1, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Categories;->categories:[Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Category;

    .line 275
    return-void
.end method
