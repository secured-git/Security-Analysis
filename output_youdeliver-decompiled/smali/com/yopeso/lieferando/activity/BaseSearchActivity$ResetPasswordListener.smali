.class Lcom/yopeso/lieferando/activity/BaseSearchActivity$ResetPasswordListener;
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
    name = "ResetPasswordListener"
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
    .line 308
    iput-object p1, p0, Lcom/yopeso/lieferando/activity/BaseSearchActivity$ResetPasswordListener;->this$0:Lcom/yopeso/lieferando/activity/BaseSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yopeso/lieferando/activity/BaseSearchActivity;Lcom/yopeso/lieferando/activity/BaseSearchActivity$ResetPasswordListener;)V
    .locals 0

    .prologue
    .line 308
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/activity/BaseSearchActivity$ResetPasswordListener;-><init>(Lcom/yopeso/lieferando/activity/BaseSearchActivity;)V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 4
    .param p1, "exception"    # Lcom/android/volley/VolleyError;

    .prologue
    const/4 v3, 0x0

    .line 316
    const-class v0, Lcom/yopeso/lieferando/activity/BaseSearchActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ResetPasswordListener:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object v0, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/BaseSearchActivity$ResetPasswordListener;->this$0:Lcom/yopeso/lieferando/activity/BaseSearchActivity;

    sget v1, Lcom/yopeso/lieferando/R$string;->passwordResetFailure:I

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 322
    :goto_0
    return-void

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/BaseSearchActivity$ResetPasswordListener;->this$0:Lcom/yopeso/lieferando/activity/BaseSearchActivity;

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

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/activity/BaseSearchActivity$ResetPasswordListener;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 3
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 311
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/BaseSearchActivity$ResetPasswordListener;->this$0:Lcom/yopeso/lieferando/activity/BaseSearchActivity;

    sget v1, Lcom/yopeso/lieferando/R$string;->passwordResetSuccess:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 312
    return-void
.end method
