.class Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$9;
.super Ljava/lang/Object;
.source "DeliveryPickDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    iput-object p1, p0, Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog$9;->this$0:Lcom/yopeso/lieferando/dialogs/DeliveryPickDialog;

    .line 500
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 502
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 503
    return-void
.end method
