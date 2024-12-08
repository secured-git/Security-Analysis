.class public Lcom/yopeso/lieferando/util/NetworkUtil;
.super Ljava/lang/Object;
.source "NetworkUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 16
    .local v1, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 17
    .local v0, "activeNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static removeFBfidelityPoints(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p0, "response":Ljava/util/List;, "Ljava/util/List<Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;>;"
    if-eqz p0, :cond_1

    .line 26
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 27
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 34
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;>;"
    :cond_1
    return-void

    .line 28
    .restart local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;

    .line 29
    .local v0, "fPoint":Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/user/fidelity/FidelityPoint;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FACEBOOK_CONNECT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 30
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method
