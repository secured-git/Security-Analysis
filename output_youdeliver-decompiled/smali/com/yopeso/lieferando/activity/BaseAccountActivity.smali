.class public abstract Lcom/yopeso/lieferando/activity/BaseAccountActivity;
.super Lcom/yopeso/lieferando/custom/FBActivity;
.source "BaseAccountActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yopeso/lieferando/activity/BaseAccountActivity$DiscountsListner;,
        Lcom/yopeso/lieferando/activity/BaseAccountActivity$FacebookLinkListener;,
        Lcom/yopeso/lieferando/activity/BaseAccountActivity$StampsListener;,
        Lcom/yopeso/lieferando/activity/BaseAccountActivity$UserDataListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/yopeso/lieferando/activity/BaseAccountActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yopeso/lieferando/activity/BaseAccountActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/yopeso/lieferando/custom/FBActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/yopeso/lieferando/activity/BaseAccountActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/yopeso/lieferando/activity/BaseAccountActivity;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/BaseAccountActivity;->dismissLoadingIndicator()V

    return-void
.end method

.method static synthetic access$2(Lcom/yopeso/lieferando/activity/BaseAccountActivity;Lcom/android/volley/VolleyError;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/activity/BaseAccountActivity;->handleNetworkError(Lcom/android/volley/VolleyError;)V

    return-void
.end method


# virtual methods
.method public doFacebookLogin(Ljava/lang/String;)V
    .locals 2
    .param p1, "fbToken"    # Ljava/lang/String;

    .prologue
    .line 43
    sget v0, Lcom/yopeso/lieferando/R$string;->pleaseWait:I

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/activity/BaseAccountActivity;->showLoadingIndicator(I)V

    .line 44
    sget-object v0, Lcom/yopeso/lieferando/activity/BaseAccountActivity;->TAG:Ljava/lang/String;

    const-string v1, "doFacebookLogin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-virtual {p0}, Lcom/yopeso/lieferando/activity/BaseAccountActivity;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/activity/BaseAccountActivity$FacebookLinkListener;

    invoke-direct {v1, p0}, Lcom/yopeso/lieferando/activity/BaseAccountActivity$FacebookLinkListener;-><init>(Lcom/yopeso/lieferando/activity/BaseAccountActivity;)V

    invoke-static {p1, v1}, Lcom/yopeso/lieferando/net/requests/LoginRequest;->withFacebook(Ljava/lang/String;Lcom/yopeso/lieferando/net/requests/base/VolleyListener;)Lcom/yopeso/lieferando/net/requests/LoginRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/net/requests/LoginRequest;->withAuth()Lcom/yopeso/lieferando/net/requests/base/JsonRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 46
    return-void
.end method
