.class public Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$GoogleListener;
.super Ljava/lang/Object;
.source "MapAddressFragment.java"

# interfaces
.implements Lcom/yopeso/lieferando/net/requests/base/VolleyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "GoogleListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yopeso/lieferando/net/requests/base/VolleyListener",
        "<",
        "Lcom/yopeso/lieferando/model/GoogleData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;


# direct methods
.method protected constructor <init>(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;)V
    .locals 0

    .prologue
    .line 893
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$GoogleListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 907
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$GoogleListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    invoke-static {v0, p1}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->access$1(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;Lcom/android/volley/VolleyError;)V

    .line 908
    return-void
.end method

.method public onResponse(Lcom/yopeso/lieferando/model/GoogleData;)V
    .locals 3
    .param p1, "data"    # Lcom/yopeso/lieferando/model/GoogleData;

    .prologue
    .line 897
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/GoogleData;->getStatus()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/GoogleData;->getStreetResult()Lcom/yopeso/lieferando/model/GoogleData$Result;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/GoogleData;->getStreetResult()Lcom/yopeso/lieferando/model/GoogleData$Result;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/GoogleData$Result;->getCityAddress()Lcom/yopeso/lieferando/model/GoogleData$AddressComponent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 898
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$GoogleListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    new-instance v1, Landroid/location/Address;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/location/Address;-><init>(Ljava/util/Locale;)V

    invoke-static {v0, v1}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->access$8(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;Landroid/location/Address;)V

    .line 899
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$GoogleListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->access$9(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;)Landroid/location/Address;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/GoogleData;->getStreetResult()Lcom/yopeso/lieferando/model/GoogleData$Result;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/GoogleData$Result;->getCityAddress()Lcom/yopeso/lieferando/model/GoogleData$AddressComponent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/GoogleData$AddressComponent;->getLongName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/Address;->setLocality(Ljava/lang/String;)V

    .line 900
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$GoogleListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->access$9(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;)Landroid/location/Address;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/GoogleData;->getStreetResult()Lcom/yopeso/lieferando/model/GoogleData$Result;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/GoogleData$Result;->getStreetAddress()Lcom/yopeso/lieferando/model/GoogleData$AddressComponent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/GoogleData$AddressComponent;->getLongName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/Address;->setThoroughfare(Ljava/lang/String;)V

    .line 901
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$GoogleListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->access$13(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;)V

    .line 903
    :cond_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/yopeso/lieferando/model/GoogleData;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$GoogleListener;->onResponse(Lcom/yopeso/lieferando/model/GoogleData;)V

    return-void
.end method
