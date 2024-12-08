.class Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$DeleteAddressListener;
.super Ljava/lang/Object;
.source "MapAddressFragment.java"

# interfaces
.implements Lcom/yopeso/lieferando/net/requests/base/VolleyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteAddressListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yopeso/lieferando/net/requests/base/VolleyListener",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;


# direct methods
.method private constructor <init>(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$DeleteAddressListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$DeleteAddressListener;)V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$DeleteAddressListener;-><init>(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;)V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$DeleteAddressListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->access$3(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;)V

    .line 148
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$DeleteAddressListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    invoke-static {v0, p1}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->access$1(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;Lcom/android/volley/VolleyError;)V

    .line 151
    return-void
.end method

.method public onResponse(Ljava/lang/Object;)V
    .locals 3
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$DeleteAddressListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$string;->changes_saved:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 137
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$DeleteAddressListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->access$3(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;)V

    .line 140
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$DeleteAddressListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->access$0(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;)Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->deleteSelectedLocation()V

    .line 141
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$DeleteAddressListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->access$4(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;)Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v0

    invoke-static {v0}, Lcom/yopeso/lieferando/util/UserStore;->setData(Lcom/yopeso/lieferando/model/user/UserData;)V

    .line 142
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$DeleteAddressListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->getLRActivity()Lcom/yopeso/lieferando/custom/LRActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/custom/LRActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 143
    return-void
.end method
