.class Lcom/yopeso/lieferando/fragments/account/MainAddressFragment$UpdateLocationListener;
.super Ljava/lang/Object;
.source "MainAddressFragment.java"

# interfaces
.implements Lcom/yopeso/lieferando/net/requests/base/VolleyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateLocationListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yopeso/lieferando/net/requests/base/VolleyListener",
        "<",
        "Lcom/yopeso/lieferando/model/user/Location;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;


# direct methods
.method private constructor <init>(Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment$UpdateLocationListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;Lcom/yopeso/lieferando/fragments/account/MainAddressFragment$UpdateLocationListener;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment$UpdateLocationListener;-><init>(Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;)V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment$UpdateLocationListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;->access$0(Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;)V

    .line 67
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment$UpdateLocationListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;

    invoke-static {v0, p1}, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;->access$2(Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;Lcom/android/volley/VolleyError;)V

    .line 68
    return-void
.end method

.method public onResponse(Lcom/yopeso/lieferando/model/user/Location;)V
    .locals 1
    .param p1, "location"    # Lcom/yopeso/lieferando/model/user/Location;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment$UpdateLocationListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;->access$0(Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;)V

    .line 61
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment$UpdateLocationListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;->access$1(Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;)V

    .line 62
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment$UpdateLocationListener;->onResponse(Lcom/yopeso/lieferando/model/user/Location;)V

    return-void
.end method
