.class Lcom/yopeso/lieferando/dialogs/TakePictureDialog$1;
.super Ljava/lang/Object;
.source "TakePictureDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/dialogs/TakePictureDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/dialogs/TakePictureDialog;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/dialogs/TakePictureDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/dialogs/TakePictureDialog$1;->this$0:Lcom/yopeso/lieferando/dialogs/TakePictureDialog;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/TakePictureDialog$1;->this$0:Lcom/yopeso/lieferando/dialogs/TakePictureDialog;

    invoke-static {v0}, Lcom/yopeso/lieferando/dialogs/TakePictureDialog;->access$0(Lcom/yopeso/lieferando/dialogs/TakePictureDialog;)Lcom/yopeso/lieferando/callback/TakePictureCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/yopeso/lieferando/callback/TakePictureCallback;->takePicture()V

    .line 37
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/TakePictureDialog$1;->this$0:Lcom/yopeso/lieferando/dialogs/TakePictureDialog;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/dialogs/TakePictureDialog;->dismiss()V

    .line 39
    return-void
.end method
