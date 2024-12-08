.class Lcom/yopeso/lieferando/service/SyncUserDataTask$StampsListener;
.super Ljava/lang/Object;
.source "SyncUserDataTask.java"

# interfaces
.implements Lcom/yopeso/lieferando/net/requests/base/VolleyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/service/SyncUserDataTask;
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
.field final synthetic this$0:Lcom/yopeso/lieferando/service/SyncUserDataTask;


# direct methods
.method private constructor <init>(Lcom/yopeso/lieferando/service/SyncUserDataTask;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/yopeso/lieferando/service/SyncUserDataTask$StampsListener;->this$0:Lcom/yopeso/lieferando/service/SyncUserDataTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yopeso/lieferando/service/SyncUserDataTask;Lcom/yopeso/lieferando/service/SyncUserDataTask$StampsListener;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/service/SyncUserDataTask$StampsListener;-><init>(Lcom/yopeso/lieferando/service/SyncUserDataTask;)V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2
    .param p1, "arg0"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 82
    invoke-static {}, Lcom/yopeso/lieferando/service/SyncUserDataTask;->access$1()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StampsListener... ERROR !"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/service/SyncUserDataTask$StampsListener;->onResponse(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onResponse(Ljava/util/ArrayList;)V
    .locals 2
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
    .line 74
    .local p1, "stamps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/Stamp;>;"
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yopeso/lieferando/model/user/UserData;->setStampCards(Ljava/util/ArrayList;)V

    .line 77
    :cond_0
    invoke-static {}, Lcom/yopeso/lieferando/service/SyncUserDataTask;->access$1()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StampsListener... DONE !"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return-void
.end method
