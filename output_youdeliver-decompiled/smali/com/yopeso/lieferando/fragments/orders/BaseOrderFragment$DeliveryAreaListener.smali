.class public Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment$DeliveryAreaListener;
.super Ljava/lang/Object;
.source "BaseOrderFragment.java"

# interfaces
.implements Lcom/yopeso/lieferando/net/requests/base/VolleyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeliveryAreaListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yopeso/lieferando/net/requests/base/VolleyListener",
        "<",
        "Lcom/yopeso/lieferando/model/restaurant/Restaurant;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;


# direct methods
.method public constructor <init>(Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment$DeliveryAreaListener;->this$0:Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment$DeliveryAreaListener;->this$0:Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;

    invoke-static {v0, p1}, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;->access$0(Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;Lcom/android/volley/VolleyError;)V

    .line 163
    return-void
.end method

.method public onResponse(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V
    .locals 3
    .param p1, "r"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .prologue
    .line 155
    invoke-static {p1}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->newInstance(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    move-result-object v0

    .line 156
    .local v0, "dialog":Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment$DeliveryAreaListener;->this$0:Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->setCallback(Lcom/yopeso/lieferando/callback/DeliveryAreaCallBack;)V

    .line 157
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment$DeliveryAreaListener;->this$0:Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/orders/BaseOrderFragment$DeliveryAreaListener;->onResponse(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    return-void
.end method
