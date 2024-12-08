.class Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$RegisterListener;
.super Ljava/lang/Object;
.source "RegistrationFragment.java"

# interfaces
.implements Lcom/yopeso/lieferando/net/requests/base/VolleyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;
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
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;


# direct methods
.method private constructor <init>(Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$RegisterListener;->this$0:Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$RegisterListener;)V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$RegisterListener;-><init>(Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;)V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 3
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    const/4 v2, 0x0

    .line 121
    iget-object v0, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    iget v0, v0, Lcom/android/volley/NetworkResponse;->statusCode:I

    const/16 v1, 0x199

    if-ne v0, v1, :cond_0

    .line 122
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$RegisterListener;->this$0:Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$string;->account_already_exist:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 123
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$RegisterListener;->this$0:Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->access$3(Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;)V

    .line 130
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-object v0, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    iget v0, v0, Lcom/android/volley/NetworkResponse;->statusCode:I

    const/16 v1, 0x196

    if-ne v0, v1, :cond_1

    .line 125
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$RegisterListener;->this$0:Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$string;->invalid_mail_format_error_message:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 126
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$RegisterListener;->this$0:Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->access$3(Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;)V

    goto :goto_0

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$RegisterListener;->this$0:Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;

    invoke-static {v0, p1}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->access$4(Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;Lcom/android/volley/VolleyError;)V

    goto :goto_0
.end method

.method public onResponse(Lcom/yopeso/lieferando/model/user/UserData;)V
    .locals 9
    .param p1, "userData"    # Lcom/yopeso/lieferando/model/user/UserData;

    .prologue
    .line 100
    invoke-static {p1}, Lcom/yopeso/lieferando/util/UserStore;->setData(Lcom/yopeso/lieferando/model/user/UserData;)V

    .line 101
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/user/UserData;->getYdToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/user/UserData;->getYdToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yopeso/lieferando/util/UserStore;->saveToken(Ljava/lang/String;)V

    .line 104
    :cond_0
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/user/UserData;->getPrimaryLocation()Lcom/yopeso/lieferando/model/user/Location;

    move-result-object v8

    .line 105
    .local v8, "l":Lcom/yopeso/lieferando/model/user/Location;
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/user/UserData;->getPreName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/user/UserData;->getName()Ljava/lang/String;

    move-result-object v1

    if-nez v8, :cond_1

    const-string v2, ""

    .line 106
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

    iget-object v7, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$RegisterListener;->this$0:Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;

    invoke-virtual {v7}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcom/yopeso/lieferando/LieferandoApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    .line 105
    invoke-static/range {v0 .. v7}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackRegister(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 107
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$RegisterListener;->this$0:Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->access$1(Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 109
    const-class v0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RegisterListener: uploadPhoto"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$RegisterListener;->this$0:Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;

    invoke-static {v2}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->access$1(Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$RegisterListener;->this$0:Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$RegisterListener;->this$0:Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->access$1(Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->updateProfilePhoto(Landroid/net/Uri;)V

    .line 116
    :goto_3
    return-void

    .line 105
    :cond_1
    invoke-virtual {v8}, Lcom/yopeso/lieferando/model/user/Location;->getCityName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 106
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

    .line 113
    :cond_5
    const-class v0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegisterListener: no Photo"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$RegisterListener;->this$0:Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;->access$2(Lcom/yopeso/lieferando/fragments/search/RegistrationFragment;)V

    goto :goto_3
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/yopeso/lieferando/model/user/UserData;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/search/RegistrationFragment$RegisterListener;->onResponse(Lcom/yopeso/lieferando/model/user/UserData;)V

    return-void
.end method
