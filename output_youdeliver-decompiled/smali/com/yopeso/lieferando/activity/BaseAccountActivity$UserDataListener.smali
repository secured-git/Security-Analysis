.class public Lcom/yopeso/lieferando/activity/BaseAccountActivity$UserDataListener;
.super Ljava/lang/Object;
.source "BaseAccountActivity.java"

# interfaces
.implements Lcom/yopeso/lieferando/net/requests/base/VolleyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/activity/BaseAccountActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UserDataListener"
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
.field final synthetic this$0:Lcom/yopeso/lieferando/activity/BaseAccountActivity;


# direct methods
.method public constructor <init>(Lcom/yopeso/lieferando/activity/BaseAccountActivity;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/yopeso/lieferando/activity/BaseAccountActivity$UserDataListener;->this$0:Lcom/yopeso/lieferando/activity/BaseAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/BaseAccountActivity$UserDataListener;->this$0:Lcom/yopeso/lieferando/activity/BaseAccountActivity;

    invoke-static {v0}, Lcom/yopeso/lieferando/activity/BaseAccountActivity;->access$1(Lcom/yopeso/lieferando/activity/BaseAccountActivity;)V

    .line 87
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/BaseAccountActivity$UserDataListener;->this$0:Lcom/yopeso/lieferando/activity/BaseAccountActivity;

    invoke-static {v0, p1}, Lcom/yopeso/lieferando/activity/BaseAccountActivity;->access$2(Lcom/yopeso/lieferando/activity/BaseAccountActivity;Lcom/android/volley/VolleyError;)V

    .line 88
    return-void
.end method

.method public onResponse(Lcom/yopeso/lieferando/model/user/UserData;)V
    .locals 6
    .param p1, "response"    # Lcom/yopeso/lieferando/model/user/UserData;

    .prologue
    const/4 v5, 0x0

    .line 78
    invoke-static {}, Lcom/yopeso/lieferando/activity/BaseAccountActivity;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UserDataListener onResponse "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/user/UserData;->getFacebookId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/model/user/UserData;->setFacebookId(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/BaseAccountActivity$UserDataListener;->this$0:Lcom/yopeso/lieferando/activity/BaseAccountActivity;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/activity/BaseAccountActivity;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/net/requests/StampCustomerRequest;

    const-string v2, "/customer/stamps/current"

    new-instance v3, Lcom/yopeso/lieferando/activity/BaseAccountActivity$StampsListener;

    iget-object v4, p0, Lcom/yopeso/lieferando/activity/BaseAccountActivity$UserDataListener;->this$0:Lcom/yopeso/lieferando/activity/BaseAccountActivity;

    invoke-direct {v3, v4, v5}, Lcom/yopeso/lieferando/activity/BaseAccountActivity$StampsListener;-><init>(Lcom/yopeso/lieferando/activity/BaseAccountActivity;Lcom/yopeso/lieferando/activity/BaseAccountActivity$StampsListener;)V

    invoke-direct {v1, v2, v3}, Lcom/yopeso/lieferando/net/requests/StampCustomerRequest;-><init>(Ljava/lang/String;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v1}, Lcom/yopeso/lieferando/net/requests/StampCustomerRequest;->withAuth()Lcom/yopeso/lieferando/net/requests/base/JsonRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 81
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/BaseAccountActivity$UserDataListener;->this$0:Lcom/yopeso/lieferando/activity/BaseAccountActivity;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/activity/BaseAccountActivity;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/net/requests/GetUserDiscountsRequest;

    new-instance v2, Lcom/yopeso/lieferando/activity/BaseAccountActivity$DiscountsListner;

    iget-object v3, p0, Lcom/yopeso/lieferando/activity/BaseAccountActivity$UserDataListener;->this$0:Lcom/yopeso/lieferando/activity/BaseAccountActivity;

    invoke-direct {v2, v3, v5}, Lcom/yopeso/lieferando/activity/BaseAccountActivity$DiscountsListner;-><init>(Lcom/yopeso/lieferando/activity/BaseAccountActivity;Lcom/yopeso/lieferando/activity/BaseAccountActivity$DiscountsListner;)V

    invoke-direct {v1, v2}, Lcom/yopeso/lieferando/net/requests/GetUserDiscountsRequest;-><init>(Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v1}, Lcom/yopeso/lieferando/net/requests/GetUserDiscountsRequest;->withAuth()Lcom/yopeso/lieferando/net/requests/base/JsonRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 82
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/yopeso/lieferando/model/user/UserData;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/activity/BaseAccountActivity$UserDataListener;->onResponse(Lcom/yopeso/lieferando/model/user/UserData;)V

    return-void
.end method
