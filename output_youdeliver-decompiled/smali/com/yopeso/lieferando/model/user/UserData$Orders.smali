.class public Lcom/yopeso/lieferando/model/user/UserData$Orders;
.super Ljava/lang/Object;
.source "UserData.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/model/user/UserData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Orders"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public mCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "count"
    .end annotation
.end field

.field private mFirstOrder:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "firstOrder"
    .end annotation
.end field

.field private mLastOrder:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lastOrder"
    .end annotation
.end field

.field public mRateable:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rateable"
    .end annotation
.end field

.field public mRated:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rated"
    .end annotation
.end field

.field final synthetic this$0:Lcom/yopeso/lieferando/model/user/UserData;


# direct methods
.method public constructor <init>(Lcom/yopeso/lieferando/model/user/UserData;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/yopeso/lieferando/model/user/UserData$Orders;->this$0:Lcom/yopeso/lieferando/model/user/UserData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    return-void
.end method

.method static synthetic access$0(Lcom/yopeso/lieferando/model/user/UserData$Orders;J)V
    .locals 1

    .prologue
    .line 59
    iput-wide p1, p0, Lcom/yopeso/lieferando/model/user/UserData$Orders;->mFirstOrder:J

    return-void
.end method

.method static synthetic access$1(Lcom/yopeso/lieferando/model/user/UserData$Orders;J)V
    .locals 1

    .prologue
    .line 61
    iput-wide p1, p0, Lcom/yopeso/lieferando/model/user/UserData$Orders;->mLastOrder:J

    return-void
.end method

.method static synthetic access$2(Lcom/yopeso/lieferando/model/user/UserData$Orders;)J
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/yopeso/lieferando/model/user/UserData$Orders;->mFirstOrder:J

    return-wide v0
.end method

.method static synthetic access$3(Lcom/yopeso/lieferando/model/user/UserData$Orders;)J
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/yopeso/lieferando/model/user/UserData$Orders;->mLastOrder:J

    return-wide v0
.end method
