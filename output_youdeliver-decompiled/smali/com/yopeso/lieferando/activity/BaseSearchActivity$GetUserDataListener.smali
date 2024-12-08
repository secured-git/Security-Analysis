.class Lcom/yopeso/lieferando/activity/BaseSearchActivity$GetUserDataListener;
.super Ljava/lang/Object;
.source "BaseSearchActivity.java"

# interfaces
.implements Lcom/yopeso/lieferando/net/requests/base/VolleyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/activity/BaseSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetUserDataListener"
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
.field final synthetic this$0:Lcom/yopeso/lieferando/activity/BaseSearchActivity;


# direct methods
.method private constructor <init>(Lcom/yopeso/lieferando/activity/BaseSearchActivity;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/yopeso/lieferando/activity/BaseSearchActivity$GetUserDataListener;->this$0:Lcom/yopeso/lieferando/activity/BaseSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yopeso/lieferando/activity/BaseSearchActivity;Lcom/yopeso/lieferando/activity/BaseSearchActivity$GetUserDataListener;)V
    .locals 0

    .prologue
    .line 213
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/activity/BaseSearchActivity$GetUserDataListener;-><init>(Lcom/yopeso/lieferando/activity/BaseSearchActivity;)V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 4
    .param p1, "exception"    # Lcom/android/volley/VolleyError;

    .prologue
    const/4 v3, 0x0

    .line 226
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/BaseSearchActivity$GetUserDataListener;->this$0:Lcom/yopeso/lieferando/activity/BaseSearchActivity;

    invoke-static {v0}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->access$1(Lcom/yopeso/lieferando/activity/BaseSearchActivity;)V

    .line 227
    const-class v0, Lcom/yopeso/lieferando/activity/BaseSearchActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GetUserDataListener:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v0, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    iget v0, v0, Lcom/android/volley/NetworkResponse;->statusCode:I

    const/16 v1, 0x193

    if-ne v0, v1, :cond_0

    .line 230
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/BaseSearchActivity$GetUserDataListener;->this$0:Lcom/yopeso/lieferando/activity/BaseSearchActivity;

    sget v1, Lcom/yopeso/lieferando/R$string;->login_error:I

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 237
    :goto_0
    return-void

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/BaseSearchActivity$GetUserDataListener;->this$0:Lcom/yopeso/lieferando/activity/BaseSearchActivity;

    sget v1, Lcom/yopeso/lieferando/R$string;->serverError:I

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 235
    :cond_1
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/BaseSearchActivity$GetUserDataListener;->this$0:Lcom/yopeso/lieferando/activity/BaseSearchActivity;

    sget v1, Lcom/yopeso/lieferando/R$string;->no_internet:I

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onResponse(Lcom/yopeso/lieferando/model/user/UserData;)V
    .locals 6
    .param p1, "userData"    # Lcom/yopeso/lieferando/model/user/UserData;

    .prologue
    const/4 v5, 0x0

    .line 217
    invoke-static {p1}, Lcom/yopeso/lieferando/util/UserStore;->setData(Lcom/yopeso/lieferando/model/user/UserData;)V

    .line 218
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/BaseSearchActivity$GetUserDataListener;->this$0:Lcom/yopeso/lieferando/activity/BaseSearchActivity;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->onLoginSuccess()V

    .line 219
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/BaseSearchActivity$GetUserDataListener;->this$0:Lcom/yopeso/lieferando/activity/BaseSearchActivity;

    invoke-static {v0}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->access$1(Lcom/yopeso/lieferando/activity/BaseSearchActivity;)V

    .line 220
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/BaseSearchActivity$GetUserDataListener;->this$0:Lcom/yopeso/lieferando/activity/BaseSearchActivity;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/net/requests/StampCustomerRequest;

    const-string v2, "/customer/stamps/current"

    new-instance v3, Lcom/yopeso/lieferando/activity/BaseSearchActivity$StampsListener;

    iget-object v4, p0, Lcom/yopeso/lieferando/activity/BaseSearchActivity$GetUserDataListener;->this$0:Lcom/yopeso/lieferando/activity/BaseSearchActivity;

    invoke-direct {v3, v4, v5}, Lcom/yopeso/lieferando/activity/BaseSearchActivity$StampsListener;-><init>(Lcom/yopeso/lieferando/activity/BaseSearchActivity;Lcom/yopeso/lieferando/activity/BaseSearchActivity$StampsListener;)V

    invoke-direct {v1, v2, v3}, Lcom/yopeso/lieferando/net/requests/StampCustomerRequest;-><init>(Ljava/lang/String;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v1}, Lcom/yopeso/lieferando/net/requests/StampCustomerRequest;->withAuth()Lcom/yopeso/lieferando/net/requests/base/JsonRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 221
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/BaseSearchActivity$GetUserDataListener;->this$0:Lcom/yopeso/lieferando/activity/BaseSearchActivity;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/net/requests/GetUserDiscountsRequest;

    new-instance v2, Lcom/yopeso/lieferando/activity/BaseSearchActivity$DiscountsListner;

    iget-object v3, p0, Lcom/yopeso/lieferando/activity/BaseSearchActivity$GetUserDataListener;->this$0:Lcom/yopeso/lieferando/activity/BaseSearchActivity;

    invoke-direct {v2, v3, v5}, Lcom/yopeso/lieferando/activity/BaseSearchActivity$DiscountsListner;-><init>(Lcom/yopeso/lieferando/activity/BaseSearchActivity;Lcom/yopeso/lieferando/activity/BaseSearchActivity$DiscountsListner;)V

    invoke-direct {v1, v2}, Lcom/yopeso/lieferando/net/requests/GetUserDiscountsRequest;-><init>(Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v1}, Lcom/yopeso/lieferando/net/requests/GetUserDiscountsRequest;->withAuth()Lcom/yopeso/lieferando/net/requests/base/JsonRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 222
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/yopeso/lieferando/model/user/UserData;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/activity/BaseSearchActivity$GetUserDataListener;->onResponse(Lcom/yopeso/lieferando/model/user/UserData;)V

    return-void
.end method
