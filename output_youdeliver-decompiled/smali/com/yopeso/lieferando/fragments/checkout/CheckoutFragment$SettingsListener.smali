.class public Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$SettingsListener;
.super Ljava/lang/Object;
.source "CheckoutFragment.java"

# interfaces
.implements Lcom/yopeso/lieferando/net/requests/base/VolleyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SettingsListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yopeso/lieferando/net/requests/base/VolleyListener",
        "<",
        "Lcom/yopeso/lieferando/model/SettingsContent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;


# direct methods
.method protected constructor <init>(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;)V
    .locals 0

    .prologue
    .line 478
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$SettingsListener;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 494
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$SettingsListener;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    invoke-static {v0, p1}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->access$15(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;Lcom/android/volley/VolleyError;)V

    .line 495
    return-void
.end method

.method public onResponse(Lcom/yopeso/lieferando/model/SettingsContent;)V
    .locals 2
    .param p1, "settings"    # Lcom/yopeso/lieferando/model/SettingsContent;

    .prologue
    .line 484
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/SettingsContent;->isMaintenance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$SettingsListener;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/SettingsContent;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->access$14(Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;Ljava/lang/String;)V

    .line 490
    :goto_0
    return-void

    .line 488
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$SettingsListener;->this$0:Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yopeso/lieferando/LieferandoApplication;->setSettingModel(Lcom/yopeso/lieferando/model/SettingsContent;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/yopeso/lieferando/model/SettingsContent;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/checkout/CheckoutFragment$SettingsListener;->onResponse(Lcom/yopeso/lieferando/model/SettingsContent;)V

    return-void
.end method
