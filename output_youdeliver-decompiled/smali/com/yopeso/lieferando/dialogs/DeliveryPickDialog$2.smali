.class Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$2;
.super Ljava/lang/Object;
.source "DeliveryPickDialog.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$2;->this$0:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    .line 289
    const-class v1, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onEditorAction:"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    if-eqz p3, :cond_1

    iget-object v1, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$2;->this$0:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    iget-object v1, v1, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->mLocationSuggestions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/16 v2, 0x42

    if-ne v1, v2, :cond_1

    .line 291
    :cond_0
    iget-object v1, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$2;->this$0:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    invoke-static {v1, v0}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->access$8(Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;Z)V

    .line 292
    const/4 v0, 0x1

    .line 294
    :cond_1
    return v0
.end method
