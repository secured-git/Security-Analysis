.class Lcom/yopeso/lieferando/dialogs/MealOptionalCommentDialog$1;
.super Ljava/lang/Object;
.source "MealOptionalCommentDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/dialogs/MealOptionalCommentDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/dialogs/MealOptionalCommentDialog;

.field private final synthetic val$currentCommentEditText:Lcom/yopeso/lieferando/view/CommentEditText;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/dialogs/MealOptionalCommentDialog;Lcom/yopeso/lieferando/view/CommentEditText;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/dialogs/MealOptionalCommentDialog$1;->this$0:Lcom/yopeso/lieferando/dialogs/MealOptionalCommentDialog;

    iput-object p2, p0, Lcom/yopeso/lieferando/dialogs/MealOptionalCommentDialog$1;->val$currentCommentEditText:Lcom/yopeso/lieferando/view/CommentEditText;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 54
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/MealOptionalCommentDialog$1;->this$0:Lcom/yopeso/lieferando/dialogs/MealOptionalCommentDialog;

    invoke-static {v0}, Lcom/yopeso/lieferando/dialogs/MealOptionalCommentDialog;->access$0(Lcom/yopeso/lieferando/dialogs/MealOptionalCommentDialog;)Lcom/yopeso/lieferando/callback/MealOptionalCommentDialogCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/dialogs/MealOptionalCommentDialog$1;->val$currentCommentEditText:Lcom/yopeso/lieferando/view/CommentEditText;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/view/CommentEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/yopeso/lieferando/callback/MealOptionalCommentDialogCallback;->setComment(Ljava/lang/String;)V

    .line 55
    return-void
.end method
