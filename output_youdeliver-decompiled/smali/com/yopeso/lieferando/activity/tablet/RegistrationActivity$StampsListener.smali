.class Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity$StampsListener;
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
    name = "StampsListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yopeso/lieferando/net/requests/base/VolleyListener",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/yopeso/lieferando/model/Stamp;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity;


# direct methods
.method private constructor <init>(Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity$StampsListener;->this$0:Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity;Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity$StampsListener;)V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity$StampsListener;-><init>(Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity;)V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity$StampsListener;->this$0:Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity;

    invoke-static {v0}, Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity;->access$2(Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity;)V

    .line 148
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity$StampsListener;->this$0:Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity;

    invoke-static {v0, p1}, Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity;->access$0(Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity;Lcom/android/volley/VolleyError;)V

    .line 149
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity$StampsListener;->onResponse(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onResponse(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/Stamp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 140
    .local p1, "stamps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/Stamp;>;"
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yopeso/lieferando/model/user/UserData;->setStampCards(Ljava/util/ArrayList;)V

    .line 141
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity$StampsListener;->this$0:Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity;

    invoke-static {v0}, Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity;->access$1(Lcom/yopeso/lieferando/activity/tablet/RegistrationActivity;)V

    .line 143
    return-void
.end method
