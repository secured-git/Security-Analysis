.class Lcom/yopeso/lieferando/activity/BaseSearchActivity$StampsListener;
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
.field final synthetic this$0:Lcom/yopeso/lieferando/activity/BaseSearchActivity;


# direct methods
.method private constructor <init>(Lcom/yopeso/lieferando/activity/BaseSearchActivity;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/yopeso/lieferando/activity/BaseSearchActivity$StampsListener;->this$0:Lcom/yopeso/lieferando/activity/BaseSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yopeso/lieferando/activity/BaseSearchActivity;Lcom/yopeso/lieferando/activity/BaseSearchActivity$StampsListener;)V
    .locals 0

    .prologue
    .line 240
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/activity/BaseSearchActivity$StampsListener;-><init>(Lcom/yopeso/lieferando/activity/BaseSearchActivity;)V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 251
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/BaseSearchActivity$StampsListener;->this$0:Lcom/yopeso/lieferando/activity/BaseSearchActivity;

    invoke-static {v0}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->access$1(Lcom/yopeso/lieferando/activity/BaseSearchActivity;)V

    .line 252
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/BaseSearchActivity$StampsListener;->this$0:Lcom/yopeso/lieferando/activity/BaseSearchActivity;

    invoke-static {v0, p1}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->access$2(Lcom/yopeso/lieferando/activity/BaseSearchActivity;Lcom/android/volley/VolleyError;)V

    .line 253
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/activity/BaseSearchActivity$StampsListener;->onResponse(Ljava/util/ArrayList;)V

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
    .line 243
    .local p1, "stamps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/Stamp;>;"
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yopeso/lieferando/model/user/UserData;->setStampCards(Ljava/util/ArrayList;)V

    .line 247
    return-void
.end method
