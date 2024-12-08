.class Lcom/yopeso/lieferando/net/requests/MealsRequest$Additions;
.super Ljava/lang/Object;
.source "MealsRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/net/requests/MealsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Additions"
.end annotation


# instance fields
.field public maxAmount:I

.field public name:Ljava/lang/String;

.field final synthetic this$0:Lcom/yopeso/lieferando/net/requests/MealsRequest;


# direct methods
.method private constructor <init>(Lcom/yopeso/lieferando/net/requests/MealsRequest;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/yopeso/lieferando/net/requests/MealsRequest$Additions;->this$0:Lcom/yopeso/lieferando/net/requests/MealsRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
