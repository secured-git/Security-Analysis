.class Lcom/yopeso/lieferando/fragments/account/MainAddressFragment$DeleteAddressListener;
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
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;


# direct methods
.method private constructor <init>(Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment$DeleteAddressListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;Lcom/yopeso/lieferando/fragments/account/MainAddressFragment$DeleteAddressListener;)V
    .locals 0

    .prologue
    .line 245
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment$DeleteAddressListener;-><init>(Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;)V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 260
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment$DeleteAddressListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;->access$0(Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;)V

    .line 261
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment$DeleteAddressListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;

    invoke-static {v0, p1}, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;->access$2(Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;Lcom/android/volley/VolleyError;)V

    .line 262
    return-void
.end method

.method public onResponse(Ljava/lang/Object;)V
    .locals 3
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 249
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment$DeleteAddressListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$string;->changes_saved:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 250
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment$DeleteAddressListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;->access$0(Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;)V

    .line 254
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment$DeleteAddressListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;->access$3(Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;)Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v0

    invoke-static {v0}, Lcom/yopeso/lieferando/util/UserStore;->setData(Lcom/yopeso/lieferando/model/user/UserData;)V

    .line 256
    return-void
.end method
