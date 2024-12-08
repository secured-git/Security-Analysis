.class Lcom/yopeso/lieferando/dialogs/DatePickerDialog$1;
.super Ljava/lang/Object;
.source "DatePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/dialogs/DatePickerDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/dialogs/DatePickerDialog;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/dialogs/DatePickerDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/dialogs/DatePickerDialog$1;->this$0:Lcom/yopeso/lieferando/dialogs/DatePickerDialog;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 62
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DatePickerDialog$1;->this$0:Lcom/yopeso/lieferando/dialogs/DatePickerDialog;

    invoke-static {v0}, Lcom/yopeso/lieferando/dialogs/DatePickerDialog;->access$0(Lcom/yopeso/lieferando/dialogs/DatePickerDialog;)Landroid/widget/DatePicker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/DatePicker;->clearFocus()V

    .line 63
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DatePickerDialog$1;->this$0:Lcom/yopeso/lieferando/dialogs/DatePickerDialog;

    invoke-static {v0}, Lcom/yopeso/lieferando/dialogs/DatePickerDialog;->access$1(Lcom/yopeso/lieferando/dialogs/DatePickerDialog;)Lcom/yopeso/lieferando/callback/DatePickerCallBack;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/dialogs/DatePickerDialog$1;->this$0:Lcom/yopeso/lieferando/dialogs/DatePickerDialog;

    invoke-static {v1}, Lcom/yopeso/lieferando/dialogs/DatePickerDialog;->access$2(Lcom/yopeso/lieferando/dialogs/DatePickerDialog;)I

    move-result v1

    iget-object v2, p0, Lcom/yopeso/lieferando/dialogs/DatePickerDialog$1;->this$0:Lcom/yopeso/lieferando/dialogs/DatePickerDialog;

    invoke-static {v2}, Lcom/yopeso/lieferando/dialogs/DatePickerDialog;->access$3(Lcom/yopeso/lieferando/dialogs/DatePickerDialog;)I

    move-result v2

    iget-object v3, p0, Lcom/yopeso/lieferando/dialogs/DatePickerDialog$1;->this$0:Lcom/yopeso/lieferando/dialogs/DatePickerDialog;

    invoke-static {v3}, Lcom/yopeso/lieferando/dialogs/DatePickerDialog;->access$4(Lcom/yopeso/lieferando/dialogs/DatePickerDialog;)I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/yopeso/lieferando/callback/DatePickerCallBack;->setDate(III)V

    .line 64
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DatePickerDialog$1;->this$0:Lcom/yopeso/lieferando/dialogs/DatePickerDialog;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/dialogs/DatePickerDialog;->dismiss()V

    .line 65
    return-void
.end method
