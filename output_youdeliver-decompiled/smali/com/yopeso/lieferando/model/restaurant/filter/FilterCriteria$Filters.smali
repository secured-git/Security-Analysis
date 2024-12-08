.class Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Filters;
.super Ljava/lang/Object;
.source "FilterCriteria.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Filters"
.end annotation


# instance fields
.field private filters:[Ljava/lang/String;

.field final synthetic this$0:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;


# direct methods
.method public constructor <init>(Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;[Ljava/lang/String;)V
    .locals 0
    .param p2, "filters"    # [Ljava/lang/String;

    .prologue
    .line 290
    iput-object p1, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Filters;->this$0:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    iput-object p2, p0, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Filters;->filters:[Ljava/lang/String;

    .line 292
    return-void
.end method
