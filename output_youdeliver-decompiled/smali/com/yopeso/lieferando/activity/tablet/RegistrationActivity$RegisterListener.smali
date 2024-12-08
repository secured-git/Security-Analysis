.class Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity$RegisterListener;
.super Ljava/lang/Object;
.source "RegistrationActivity.java"

# interfaces
.implements Lcom/yopeso/lieferando/net/requests/base/VolleyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RegisterListener"
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
.field final synthetic this$0:Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity;


# direct methods
.method private constructor <init>(Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity$RegisterListener;->this$0:Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity;Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity$RegisterListener;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity$RegisterListener;-><init>(Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity;)V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 3
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    const/4 v2, 0x0

    .line 115
    iget-object v0, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    iget v0, v0, Lcom/android/volley/NetworkResponse;->statusCode:I

    const/16 v1, 0x199

    if-ne v0, v1, :cond_0

    .line 116
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity$RegisterListener;->this$0:Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity;

    sget v1, Lcom/yopeso/lieferando/R$string;->account_already_exist:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 122
    :goto_0
    return-void

    .line 117
    :cond_0
    iget-object v0, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    iget v0, v0, Lcom/android/volley/NetworkResponse;->statusCode:I

    const/16 v1, 0x196

    if-ne v0, v1, :cond_1

    .line 118
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity$RegisterListener;->this$0:Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity;

    sget v1, Lcom/yopeso/lieferando/R$string;->invalid_mail_format_error_message:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity$RegisterListener;->this$0:Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity;

    invoke-static {v0, p1}, Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity;->access$0(Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity;Lcom/android/volley/VolleyError;)V

    goto :goto_0
.end method

.method public onResponse(Lcom/yopeso/lieferando/model/user/UserData;)V
    .locals 10
    .param p1, "userData"    # Lcom/yopeso/lieferando/model/user/UserData;

    .prologue
    const/4 v9, 0x0

    .line 101
    invoke-static {p1}, Lcom/yopeso/lieferando/util/UserStore;->setData(Lcom/yopeso/lieferando/model/user/UserData;)V

    .line 102
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/user/UserData;->getYdToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/user/UserData;->getYdToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yopeso/lieferando/util/UserStore;->saveToken(Ljava/lang/String;)V

    .line 105
    :cond_0
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/user/UserData;->getPrimaryLocation()Lcom/yopeso/lieferando/model/user/Location;

    move-result-object v8

    .line 106
    .local v8, "l":Lcom/yopeso/lieferando/model/user/Location;
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/user/UserData;->getPreName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/user/UserData;->getName()Ljava/lang/String;

    move-result-object v1

    if-nez v8, :cond_1

    const-string v2, ""

    .line 107
    :goto_0
    if-nez v8, :cond_2

    const-string v3, ""

    :goto_1
    if-nez v8, :cond_4

    const-string v4, ""

    :goto_2
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/user/UserData;->getBirthDay()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/user/UserData;->getGender()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity$RegisterListener;->this$0:Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity;

    invoke-virtual {v7}, Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    .line 106
    invoke-static/range {v0 .. v7}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackRegister(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 108
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity$RegisterListener;->this$0:Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/net/requests/StampCustomerRequest;

    const-string v2, "/customer/stamps/current"

    new-instance v3, Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity$StampsListener;

    iget-object v4, p0, Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity$RegisterListener;->this$0:Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity;

    invoke-direct {v3, v4, v9}, Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity$StampsListener;-><init>(Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity;Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity$StampsListener;)V

    invoke-direct {v1, v2, v3}, Lcom/yopeso/lieferando/net/requests/StampCustomerRequest;-><init>(Ljava/lang/String;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v1}, Lcom/yopeso/lieferando/net/requests/StampCustomerRequest;->withAuth()Lcom/yopeso/lieferando/net/requests/base/JsonRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 109
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity$RegisterListener;->this$0:Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/net/requests/GetUserDiscountsRequest;

    new-instance v2, Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity$DiscountsListner;

    iget-object v3, p0, Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity$RegisterListener;->this$0:Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity;

    invoke-direct {v2, v3, v9}, Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity$DiscountsListner;-><init>(Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity;Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity$DiscountsListner;)V

    invoke-direct {v1, v2}, Lcom/yopeso/lieferando/net/requests/GetUserDiscountsRequest;-><init>(Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v1}, Lcom/yopeso/lieferando/net/requests/GetUserDiscountsRequest;->withAuth()Lcom/yopeso/lieferando/net/requests/base/JsonRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 110
    return-void

    .line 106
    :cond_1
    invoke-virtual {v8}, Lcom/yopeso/lieferando/model/user/Location;->getCityName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 107
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/yopeso/lieferando/model/user/Location;->getStreet()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    const-string v3, ""

    goto :goto_1

    :cond_3
    invoke-virtual {v8}, Lcom/yopeso/lieferando/model/user/Location;->getHnr()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_4
    invoke-virtual {v8}, Lcom/yopeso/lieferando/model/user/Location;->getPlz()Ljava/lang/String;

    move-result-object v4

    goto :goto_2
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/yopeso/lieferando/model/user/UserData;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity$RegisterListener;->onResponse(Lcom/yopeso/lieferando/model/user/UserData;)V

    return-void
.end method
