.class public Lcom/yopeso/lieferando/activity/BaseAccountActivity$FacebookLinkListener;
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
    name = "FacebookLinkListener"
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
.field final synthetic this$0:Lcom/yopeso/lieferando/activity/BaseAccountActivity;


# direct methods
.method public constructor <init>(Lcom/yopeso/lieferando/activity/BaseAccountActivity;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/yopeso/lieferando/activity/BaseAccountActivity$FacebookLinkListener;->this$0:Lcom/yopeso/lieferando/activity/BaseAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 3
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    const/4 v2, 0x0

    .line 61
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/BaseAccountActivity$FacebookLinkListener;->this$0:Lcom/yopeso/lieferando/activity/BaseAccountActivity;

    invoke-static {v0}, Lcom/yopeso/lieferando/activity/BaseAccountActivity;->access$1(Lcom/yopeso/lieferando/activity/BaseAccountActivity;)V

    .line 64
    iget-object v0, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    iget v0, v0, Lcom/android/volley/NetworkResponse;->statusCode:I

    const/16 v1, 0x199

    if-ne v0, v1, :cond_0

    .line 65
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/BaseAccountActivity$FacebookLinkListener;->this$0:Lcom/yopeso/lieferando/activity/BaseAccountActivity;

    sget v1, Lcom/yopeso/lieferando/R$string;->FB_account_already_exist:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 71
    :goto_0
    return-void

    .line 66
    :cond_0
    iget-object v0, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    iget v0, v0, Lcom/android/volley/NetworkResponse;->statusCode:I

    const/16 v1, 0x191

    if-ne v0, v1, :cond_1

    .line 67
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/BaseAccountActivity$FacebookLinkListener;->this$0:Lcom/yopeso/lieferando/activity/BaseAccountActivity;

    sget v1, Lcom/yopeso/lieferando/R$string;->facebook_not_verified:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/BaseAccountActivity$FacebookLinkListener;->this$0:Lcom/yopeso/lieferando/activity/BaseAccountActivity;

    invoke-static {v0, p1}, Lcom/yopeso/lieferando/activity/BaseAccountActivity;->access$2(Lcom/yopeso/lieferando/activity/BaseAccountActivity;Lcom/android/volley/VolleyError;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/activity/BaseAccountActivity$FacebookLinkListener;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 4
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-static {}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackFB()V

    .line 53
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/yopeso/lieferando/util/UserStore;->setLoggedInWithFb(Z)V

    .line 54
    invoke-static {}, Lcom/yopeso/lieferando/activity/BaseAccountActivity;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FacebookLinkListener onResponse "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/BaseAccountActivity$FacebookLinkListener;->this$0:Lcom/yopeso/lieferando/activity/BaseAccountActivity;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/activity/BaseAccountActivity;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/net/requests/GetUserDataRequest;

    new-instance v2, Lcom/yopeso/lieferando/activity/BaseAccountActivity$UserDataListener;

    iget-object v3, p0, Lcom/yopeso/lieferando/activity/BaseAccountActivity$FacebookLinkListener;->this$0:Lcom/yopeso/lieferando/activity/BaseAccountActivity;

    invoke-direct {v2, v3}, Lcom/yopeso/lieferando/activity/BaseAccountActivity$UserDataListener;-><init>(Lcom/yopeso/lieferando/activity/BaseAccountActivity;)V

    invoke-direct {v1, v2}, Lcom/yopeso/lieferando/net/requests/GetUserDataRequest;-><init>(Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 57
    return-void
.end method
