.class Lcom/yopeso/lieferando/service/SyncUserService$DiscountsListner;
.super Ljava/lang/Object;
.source "SyncUserService.java"

# interfaces
.implements Lcom/yopeso/lieferando/net/requests/base/VolleyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/service/SyncUserService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DiscountsListner"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yopeso/lieferando/net/requests/base/VolleyListener",
        "<",
        "Ljava/util/List",
        "<",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/service/SyncUserService;


# direct methods
.method private constructor <init>(Lcom/yopeso/lieferando/service/SyncUserService;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/yopeso/lieferando/service/SyncUserService$DiscountsListner;->this$0:Lcom/yopeso/lieferando/service/SyncUserService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yopeso/lieferando/service/SyncUserService;Lcom/yopeso/lieferando/service/SyncUserService$DiscountsListner;)V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/service/SyncUserService$DiscountsListner;-><init>(Lcom/yopeso/lieferando/service/SyncUserService;)V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2
    .param p1, "arg0"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 95
    const-class v0, Lcom/yopeso/lieferando/service/SyncUserService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DiscountsListner... ERROR !"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/service/SyncUserService$DiscountsListner;->onResponse(Ljava/util/List;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, "res":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yopeso/lieferando/model/user/UserData;->setmRestaurantOrders(Ljava/util/List;)V

    .line 91
    return-void
.end method
