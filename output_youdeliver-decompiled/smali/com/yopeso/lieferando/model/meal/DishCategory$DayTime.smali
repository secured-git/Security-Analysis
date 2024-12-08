.class public Lcom/yopeso/lieferando/model/meal/DishCategory$DayTime;
.super Ljava/lang/Object;
.source "DishCategory.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/model/meal/DishCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DayTime"
.end annotation


# static fields
.field public static final serialVersionUID:J = -0x3a0856b7b1bc92ddL


# instance fields
.field public mCloseHours:Ljava/util/Date;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "until"
    .end annotation
.end field

.field public mDays:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "days"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mOpenHours:Ljava/util/Date;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "from"
    .end annotation
.end field

.field final synthetic this$0:Lcom/yopeso/lieferando/model/meal/DishCategory;


# direct methods
.method public constructor <init>(Lcom/yopeso/lieferando/model/meal/DishCategory;)V
    .locals 1

    .prologue
    .line 41
    iput-object p1, p0, Lcom/yopeso/lieferando/model/meal/DishCategory$DayTime;->this$0:Lcom/yopeso/lieferando/model/meal/DishCategory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/meal/DishCategory$DayTime;->mDays:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/meal/DishCategory$DayTime;->mOpenHours:Ljava/util/Date;

    .line 39
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/yopeso/lieferando/model/meal/DishCategory$DayTime;->mCloseHours:Ljava/util/Date;

    .line 42
    return-void
.end method
