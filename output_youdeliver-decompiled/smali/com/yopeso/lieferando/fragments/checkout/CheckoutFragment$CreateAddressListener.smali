.class Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$CreateAddressListener;
.super Ljava/lang/Object;
.source "CheckoutFragment.java"

# interfaces
.implements Lcom/yopeso/lieferando/net/requests/base/VolleyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;
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
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;


# direct methods
.method private constructor <init>(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;)V
    .locals 0

    .prologue
    .line 2321
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$CreateAddressListener;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$CreateAddressListener;)V
    .locals 0

    .prologue
    .line 2321
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$CreateAddressListener;-><init>(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;)V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 2331
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$CreateAddressListener;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->access$16(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;)V

    .line 2332
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$CreateAddressListener;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    invoke-static {v0, p1}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->access$15(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;Lcom/android/volley/VolleyError;)V

    .line 2333
    return-void
.end method

.method public onResponse(Lcom/yopeso/lieferando/model/user/Location;)V
    .locals 3
    .param p1, "response"    # Lcom/yopeso/lieferando/model/user/Location;

    .prologue
    .line 2324
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$CreateAddressListener;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->access$16(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;)V

    .line 2325
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$CreateAddressListener;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/yopeso/lieferando/model/user/UserData;->addLocation(Lcom/yopeso/lieferando/model/user/Location;Landroid/content/Context;)V

    .line 2326
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$CreateAddressListener;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/yopeso/lieferando/R$string;->changes_saved:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2327
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/yopeso/lieferando/model/user/Location;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$CreateAddressListener;->onResponse(Lcom/yopeso/lieferando/model/user/Location;)V

    return-void
.end method
