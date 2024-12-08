.class Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Category;
.super Ljava/lang/Object;
.source "FilterCriteria.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Category"
.end annotation


# instance fields
.field private main_category:Ljava/lang/String;

.field private sub_categories:[Ljava/lang/String;

.field final synthetic this$0:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;


# direct methods
.method public constructor <init>(Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;Ljava/lang/String;)V
    .locals 1
    .param p2, "main_category"    # Ljava/lang/String;

    .prologue
    .line 282
    iput-object p1, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Category;->this$0:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    iput-object p2, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Category;->main_category:Ljava/lang/String;

    .line 284
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Category;->sub_categories:[Ljava/lang/String;

    .line 285
    return-void
.end method
