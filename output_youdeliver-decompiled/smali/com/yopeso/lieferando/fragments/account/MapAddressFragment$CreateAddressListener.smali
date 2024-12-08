.class Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$CreateAddressListener;
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
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;


# direct methods
.method private constructor <init>(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$CreateAddressListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$CreateAddressListener;)V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$CreateAddressListener;-><init>(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;)V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$CreateAddressListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->access$3(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;)V

    .line 128
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$CreateAddressListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    invoke-static {v0, p1}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->access$1(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;Lcom/android/volley/VolleyError;)V

    .line 129
    return-void
.end method

.method public onResponse(Lcom/yopeso/lieferando/model/user/Location;)V
    .locals 3
    .param p1, "response"    # Lcom/yopeso/lieferando/model/user/Location;

    .prologue
    const/4 v2, 0x0

    .line 118
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$CreateAddressListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    invoke-static {v0, v2}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->access$2(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;Z)V

    .line 119
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$CreateAddressListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$string;->changes_saved:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 120
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$CreateAddressListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->access$3(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;)V

    .line 121
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$CreateAddressListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->access$4(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;)Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$CreateAddressListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/yopeso/lieferando/model/user/UserData;->addLocation(Lcom/yopeso/lieferando/model/user/Location;Landroid/content/Context;)V

    .line 122
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$CreateAddressListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->getLRActivity()Lcom/yopeso/lieferando/custom/LRActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/custom/LRActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 123
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$CreateAddressListener;->onResponse(Lcom/yopeso/lieferando/model/user/Location;)V

    return-void
.end method
