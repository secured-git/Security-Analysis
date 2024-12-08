.class Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity$DiscountsListner;
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
    name = "DiscountsListner"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yopeso/lieferando/net/requests/base/VolleyListener",
        "<",
        "Ljava/util/List",
        "<",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity;


# direct methods
.method private constructor <init>(Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity$DiscountsListner;->this$0:Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity;Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity$DiscountsListner;)V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity$DiscountsListner;-><init>(Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity;)V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 0
    .param p1, "arg0"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 134
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity$DiscountsListner;->onResponse(Ljava/util/List;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 129
    .local p1, "res":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yopeso/lieferando/model/user/UserData;->setmRestaurantOrders(Ljava/util/List;)V

    .line 130
    return-void
.end method
