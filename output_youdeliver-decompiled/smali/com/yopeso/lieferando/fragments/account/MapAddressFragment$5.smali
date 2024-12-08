.class Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$5;
.super Ljava/lang/Object;
.source "MapAddressFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->showDeleteDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$5;->this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    .line 707
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 710
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 711
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$5;->this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->access$2(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;Z)V

    .line 712
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$5;->this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    sget v1, Lcom/yopeso/lieferando/R$string;->pleaseWait:I

    invoke-static {v0, v1}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->access$21(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;I)V

    .line 713
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$5;->this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/net/requests/DeleteAddressRequest;

    iget-object v2, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$5;->this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    invoke-static {v2}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->access$0(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;)Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->getLocationSelected()Lcom/yopeso/lieferando/model/user/Location;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yopeso/lieferando/model/user/Location;->getId()I

    move-result v2

    int-to-long v2, v2

    new-instance v4, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$DeleteAddressListener;

    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$5;->this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$DeleteAddressListener;-><init>(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$DeleteAddressListener;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/yopeso/lieferando/net/requests/DeleteAddressRequest;-><init>(JLcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v1}, Lcom/yopeso/lieferando/net/requests/DeleteAddressRequest;->withAuth()Lcom/yopeso/lieferando/net/requests/base/JsonRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 714
    return-void
.end method
