.class Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$CreateAddressListener;
.super Ljava/lang/Object;
.source "DeliveryPickDialog.java"

# interfaces
.implements Lcom/yopeso/lieferando/net/requests/base/VolleyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CreateAddressListener"
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
.field final synthetic this$0:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;


# direct methods
.method private constructor <init>(Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;)V
    .locals 0

    .prologue
    .line 862
    iput-object p1, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$CreateAddressListener;->this$0:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$CreateAddressListener;)V
    .locals 0

    .prologue
    .line 862
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$CreateAddressListener;-><init>(Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;)V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 874
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$CreateAddressListener;->this$0:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    invoke-virtual {v0, p1}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->handleNetworkError(Lcom/android/volley/VolleyError;)V

    .line 875
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$CreateAddressListener;->this$0:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->dismiss()V

    .line 877
    return-void
.end method

.method public onResponse(Lcom/yopeso/lieferando/model/user/Location;)V
    .locals 3
    .param p1, "response"    # Lcom/yopeso/lieferando/model/user/Location;

    .prologue
    .line 865
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$CreateAddressListener;->this$0:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$string;->changes_saved:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 866
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$CreateAddressListener;->this$0:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->dismissLoadingIndicator()V

    .line 867
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$CreateAddressListener;->this$0:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/yopeso/lieferando/model/user/UserData;->addLocation(Lcom/yopeso/lieferando/model/user/Location;Landroid/content/Context;)V

    .line 868
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$CreateAddressListener;->this$0:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    invoke-virtual {v0, p1}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->onLocationSelected(Lcom/yopeso/lieferando/model/user/Location;)V

    .line 869
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$CreateAddressListener;->this$0:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->dismiss()V

    .line 870
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$CreateAddressListener;->onResponse(Lcom/yopeso/lieferando/model/user/Location;)V

    return-void
.end method
