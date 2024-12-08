.class Lcom/yopeso/lieferando/activity/BaseSearchActivity$AuthenticateListener;
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
    name = "AuthenticateListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yopeso/lieferando/net/requests/base/VolleyListener",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/activity/BaseSearchActivity;


# direct methods
.method private constructor <init>(Lcom/yopeso/lieferando/activity/BaseSearchActivity;)V
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Lcom/yopeso/lieferando/activity/BaseSearchActivity$AuthenticateListener;->this$0:Lcom/yopeso/lieferando/activity/BaseSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yopeso/lieferando/activity/BaseSearchActivity;Lcom/yopeso/lieferando/activity/BaseSearchActivity$AuthenticateListener;)V
    .locals 0

    .prologue
    .line 283
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/activity/BaseSearchActivity$AuthenticateListener;-><init>(Lcom/yopeso/lieferando/activity/BaseSearchActivity;)V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 4
    .param p1, "exception"    # Lcom/android/volley/VolleyError;

    .prologue
    const/4 v3, 0x0

    .line 294
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/BaseSearchActivity$AuthenticateListener;->this$0:Lcom/yopeso/lieferando/activity/BaseSearchActivity;

    invoke-static {v0}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->access$1(Lcom/yopeso/lieferando/activity/BaseSearchActivity;)V

    .line 295
    const-class v0, Lcom/yopeso/lieferando/activity/BaseSearchActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AuthenticateListener:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v0, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    if-eqz v0, :cond_1

    .line 297
    iget-object v0, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    iget v0, v0, Lcom/android/volley/NetworkResponse;->statusCode:I

    const/16 v1, 0x193

    if-ne v0, v1, :cond_0

    .line 298
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/BaseSearchActivity$AuthenticateListener;->this$0:Lcom/yopeso/lieferando/activity/BaseSearchActivity;

    sget v1, Lcom/yopeso/lieferando/R$string;->login_error:I

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 305
    :goto_0
    return-void

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/BaseSearchActivity$AuthenticateListener;->this$0:Lcom/yopeso/lieferando/activity/BaseSearchActivity;

    sget v1, Lcom/yopeso/lieferando/R$string;->serverError:I

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 303
    :cond_1
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/BaseSearchActivity$AuthenticateListener;->this$0:Lcom/yopeso/lieferando/activity/BaseSearchActivity;

    sget v1, Lcom/yopeso/lieferando/R$string;->no_internet:I

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/activity/BaseSearchActivity$AuthenticateListener;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 5
    .param p1, "ydToken"    # Ljava/lang/String;

    .prologue
    .line 287
    invoke-static {p1}, Lcom/yopeso/lieferando/util/UserStore;->saveToken(Ljava/lang/String;)V

    .line 288
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/yopeso/lieferando/util/UserStore;->setLoggedInWithFb(Z)V

    .line 289
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/BaseSearchActivity$AuthenticateListener;->this$0:Lcom/yopeso/lieferando/activity/BaseSearchActivity;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/net/requests/GetUserDataRequest;

    new-instance v2, Lcom/yopeso/lieferando/activity/BaseSearchActivity$GetUserDataListener;

    iget-object v3, p0, Lcom/yopeso/lieferando/activity/BaseSearchActivity$AuthenticateListener;->this$0:Lcom/yopeso/lieferando/activity/BaseSearchActivity;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/yopeso/lieferando/activity/BaseSearchActivity$GetUserDataListener;-><init>(Lcom/yopeso/lieferando/activity/BaseSearchActivity;Lcom/yopeso/lieferando/activity/BaseSearchActivity$GetUserDataListener;)V

    invoke-direct {v1, v2}, Lcom/yopeso/lieferando/net/requests/GetUserDataRequest;-><init>(Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v1}, Lcom/yopeso/lieferando/net/requests/GetUserDataRequest;->withAuth()Lcom/yopeso/lieferando/net/requests/base/JsonRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 290
    return-void
.end method
