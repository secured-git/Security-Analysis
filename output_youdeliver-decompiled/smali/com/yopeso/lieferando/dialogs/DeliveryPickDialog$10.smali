.class Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$10;
.super Ljava/lang/Object;
.source "DeliveryPickDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


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

.field private final synthetic val$d:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$10;->this$0:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    iput-object p2, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$10;->val$d:Landroid/app/AlertDialog;

    .line 506
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$10;)Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$10;->this$0:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    return-object v0
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 510
    iget-object v1, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$10;->val$d:Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 511
    .local v0, "b":Landroid/widget/Button;
    new-instance v1, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$10$1;

    invoke-direct {v1, p0}, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$10$1;-><init>(Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$10;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 551
    return-void
.end method
