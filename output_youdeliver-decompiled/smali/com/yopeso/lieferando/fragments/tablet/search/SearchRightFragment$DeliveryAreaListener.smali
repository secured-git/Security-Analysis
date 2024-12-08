.class public Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$DeliveryAreaListener;
.super Ljava/lang/Object;
.source "SearchRightFragment.java"

# interfaces
.implements Lcom/yopeso/lieferando/net/requests/base/VolleyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;
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
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;


# direct methods
.method public constructor <init>(Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;)V
    .locals 0

    .prologue
    .line 546
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$DeliveryAreaListener;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 557
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$DeliveryAreaListener;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;

    invoke-static {v0, p1}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->access$4(Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;Lcom/android/volley/VolleyError;)V

    .line 558
    return-void
.end method

.method public onResponse(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V
    .locals 3
    .param p1, "r"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .prologue
    .line 550
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$DeliveryAreaListener;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;

    invoke-static {p1}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->newInstance(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->access$5(Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;)V

    .line 551
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$DeliveryAreaListener;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->access$6(Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;)Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$DeliveryAreaListener;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->setCallback(Lcom/yopeso/lieferando/callback/DeliveryAreaCallBack;)V

    .line 552
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$DeliveryAreaListener;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->access$6(Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;)Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$DeliveryAreaListener;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 553
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$DeliveryAreaListener;->onResponse(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    return-void
.end method
