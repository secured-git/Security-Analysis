.class Lcom/yopeso/lieferando/service/SyncUserService$1;
.super Ljava/lang/Object;
.source "SyncUserService.java"

# interfaces
.implements Lcom/yopeso/lieferando/net/requests/base/VolleyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/service/SyncUserService;->onHandleIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yopeso/lieferando/net/requests/base/VolleyListener",
        "<",
        "Lcom/yopeso/lieferando/model/user/UserData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/service/SyncUserService;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/service/SyncUserService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/service/SyncUserService$1;->this$0:Lcom/yopeso/lieferando/service/SyncUserService;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 61
    const-class v0, Lcom/yopeso/lieferando/service/SyncUserService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GetUserDataRequest... ERROR !"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return-void
.end method

.method public onResponse(Lcom/yopeso/lieferando/model/user/UserData;)V
    .locals 6
    .param p1, "userData"    # Lcom/yopeso/lieferando/model/user/UserData;

    .prologue
    const/4 v5, 0x0

    .line 52
    invoke-static {p1}, Lcom/yopeso/lieferando/util/UserStore;->setData(Lcom/yopeso/lieferando/model/user/UserData;)V

    .line 53
    const-class v0, Lcom/yopeso/lieferando/service/SyncUserService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GetUserDataRequest..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v0, p0, Lcom/yopeso/lieferando/service/SyncUserService$1;->this$0:Lcom/yopeso/lieferando/service/SyncUserService;

    iget-object v1, p0, Lcom/yopeso/lieferando/service/SyncUserService$1;->this$0:Lcom/yopeso/lieferando/service/SyncUserService;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/service/SyncUserService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yopeso/lieferando/service/SyncUserService;->access$0(Lcom/yopeso/lieferando/service/SyncUserService;Lcom/android/volley/RequestQueue;)V

    .line 55
    iget-object v0, p0, Lcom/yopeso/lieferando/service/SyncUserService$1;->this$0:Lcom/yopeso/lieferando/service/SyncUserService;

    invoke-static {v0}, Lcom/yopeso/lieferando/service/SyncUserService;->access$1(Lcom/yopeso/lieferando/service/SyncUserService;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/net/requests/StampCustomerRequest;

    const-string v2, "/customer/stamps/current"

    new-instance v3, Lcom/yopeso/lieferando/service/SyncUserService$StampsListener;

    iget-object v4, p0, Lcom/yopeso/lieferando/service/SyncUserService$1;->this$0:Lcom/yopeso/lieferando/service/SyncUserService;

    invoke-direct {v3, v4, v5}, Lcom/yopeso/lieferando/service/SyncUserService$StampsListener;-><init>(Lcom/yopeso/lieferando/service/SyncUserService;Lcom/yopeso/lieferando/service/SyncUserService$StampsListener;)V

    invoke-direct {v1, v2, v3}, Lcom/yopeso/lieferando/net/requests/StampCustomerRequest;-><init>(Ljava/lang/String;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v1}, Lcom/yopeso/lieferando/net/requests/StampCustomerRequest;->withAuth()Lcom/yopeso/lieferando/net/requests/base/JsonRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 56
    iget-object v0, p0, Lcom/yopeso/lieferando/service/SyncUserService$1;->this$0:Lcom/yopeso/lieferando/service/SyncUserService;

    invoke-static {v0}, Lcom/yopeso/lieferando/service/SyncUserService;->access$1(Lcom/yopeso/lieferando/service/SyncUserService;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/net/requests/GetUserDiscountsRequest;

    new-instance v2, Lcom/yopeso/lieferando/service/SyncUserService$DiscountsListner;

    iget-object v3, p0, Lcom/yopeso/lieferando/service/SyncUserService$1;->this$0:Lcom/yopeso/lieferando/service/SyncUserService;

    invoke-direct {v2, v3, v5}, Lcom/yopeso/lieferando/service/SyncUserService$DiscountsListner;-><init>(Lcom/yopeso/lieferando/service/SyncUserService;Lcom/yopeso/lieferando/service/SyncUserService$DiscountsListner;)V

    invoke-direct {v1, v2}, Lcom/yopeso/lieferando/net/requests/GetUserDiscountsRequest;-><init>(Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v1}, Lcom/yopeso/lieferando/net/requests/GetUserDiscountsRequest;->withAuth()Lcom/yopeso/lieferando/net/requests/base/JsonRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 57
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/yopeso/lieferando/model/user/UserData;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/service/SyncUserService$1;->onResponse(Lcom/yopeso/lieferando/model/user/UserData;)V

    return-void
.end method
