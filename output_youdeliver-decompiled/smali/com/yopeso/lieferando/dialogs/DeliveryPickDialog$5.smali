.class Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$5;
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
    iput-object p1, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$5;->this$0:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    .line 364
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

    .line 367
    if-eqz p3, :cond_1

    iget-object v1, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$5;->this$0:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    invoke-static {v1}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->access$5(Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;)Ljava/util/List;

    move-result-object v1

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

    .line 368
    :cond_0
    iget-object v1, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$5;->this$0:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    invoke-static {v1, v0}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;->access$11(Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;Z)V

    .line 369
    const/4 v0, 0x1

    .line 371
    :cond_1
    return v0
.end method
