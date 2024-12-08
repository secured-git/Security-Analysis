.class Lcom/yopeso/lieferando/service/SyncUserDataTask$DiscountsListner;
.super Ljava/lang/Object;
.source "SyncUserDataTask.java"

# interfaces
.implements Lcom/yopeso/lieferando/net/requests/base/VolleyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/service/SyncUserDataTask;
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
.field final synthetic this$0:Lcom/yopeso/lieferando/service/SyncUserDataTask;


# direct methods
.method private constructor <init>(Lcom/yopeso/lieferando/service/SyncUserDataTask;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/yopeso/lieferando/service/SyncUserDataTask$DiscountsListner;->this$0:Lcom/yopeso/lieferando/service/SyncUserDataTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yopeso/lieferando/service/SyncUserDataTask;Lcom/yopeso/lieferando/service/SyncUserDataTask$DiscountsListner;)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/service/SyncUserDataTask$DiscountsListner;-><init>(Lcom/yopeso/lieferando/service/SyncUserDataTask;)V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2
    .param p1, "arg0"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 96
    invoke-static {}, Lcom/yopeso/lieferando/service/SyncUserDataTask;->access$1()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DiscountsListner... ERROR !"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/service/SyncUserDataTask$DiscountsListner;->onResponse(Ljava/util/List;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;)V
    .locals 2
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
    .line 89
    .local p1, "res":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yopeso/lieferando/model/user/UserData;->setmRestaurantOrders(Ljava/util/List;)V

    .line 90
    invoke-static {}, Lcom/yopeso/lieferando/service/SyncUserDataTask;->access$1()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DiscountsListner... DONE !"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Lcom/yopeso/lieferando/service/SyncUserDataTask$DiscountsListner;->this$0:Lcom/yopeso/lieferando/service/SyncUserDataTask;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yopeso/lieferando/service/SyncUserDataTask;->access$2(Lcom/yopeso/lieferando/service/SyncUserDataTask;Z)V

    .line 92
    return-void
.end method
