.class Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity$FacebookLoginListener;
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
    name = "FacebookLoginListener"
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
.field final synthetic this$0:Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity;


# direct methods
.method private constructor <init>(Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity$FacebookLoginListener;->this$0:Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity;Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity$FacebookLoginListener;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity$FacebookLoginListener;-><init>(Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity;)V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 3
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 84
    iget-object v0, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    iget v0, v0, Lcom/android/volley/NetworkResponse;->statusCode:I

    const/16 v1, 0x191

    if-ne v0, v1, :cond_0

    .line 85
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity$FacebookLoginListener;->this$0:Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity;

    sget v1, Lcom/yopeso/lieferando/R$string;->facebook_not_verified:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity$FacebookLoginListener;->this$0:Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity;

    invoke-static {v0, p1}, Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity;->access$0(Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity;Lcom/android/volley/VolleyError;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity$FacebookLoginListener;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 5
    .param p1, "ydToken"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-static {p1}, Lcom/yopeso/lieferando/util/UserStore;->saveToken(Ljava/lang/String;)V

    .line 76
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/yopeso/lieferando/util/UserStore;->setLoggedInWithFb(Z)V

    .line 77
    invoke-static {}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackFB()V

    .line 79
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity$FacebookLoginListener;->this$0:Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/net/requests/GetUserDataRequest;

    new-instance v2, Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity$RegisterListener;

    iget-object v3, p0, Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity$FacebookLoginListener;->this$0:Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity$RegisterListener;-><init>(Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity;Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity$RegisterListener;)V

    invoke-direct {v1, v2}, Lcom/yopeso/lieferando/net/requests/GetUserDataRequest;-><init>(Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v1}, Lcom/yopeso/lieferando/net/requests/GetUserDataRequest;->withAuth()Lcom/yopeso/lieferando/net/requests/base/JsonRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 80
    return-void
.end method
