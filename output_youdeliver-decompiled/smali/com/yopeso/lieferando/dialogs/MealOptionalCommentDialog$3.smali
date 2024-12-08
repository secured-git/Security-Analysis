.class Lcom/yopeso/lieferando/dialogs/MealOptionalCommentDialog$3;
.super Ljava/lang/Object;
.source "MealOptionalCommentDialog.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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
    iput-object p1, p0, Lcom/yopeso/lieferando/dialogs/MealOptionalCommentDialog$3;->this$0:Lcom/yopeso/lieferando/dialogs/MealOptionalCommentDialog;

    iput-object p2, p0, Lcom/yopeso/lieferando/dialogs/MealOptionalCommentDialog$3;->val$currentCommentEditText:Lcom/yopeso/lieferando/view/CommentEditText;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 68
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/MealOptionalCommentDialog$3;->this$0:Lcom/yopeso/lieferando/dialogs/MealOptionalCommentDialog;

    invoke-static {v0}, Lcom/yopeso/lieferando/dialogs/MealOptionalCommentDialog;->access$0(Lcom/yopeso/lieferando/dialogs/MealOptionalCommentDialog;)Lcom/yopeso/lieferando/callback/MealOptionalCommentDialogCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/dialogs/MealOptionalCommentDialog$3;->val$currentCommentEditText:Lcom/yopeso/lieferando/view/CommentEditText;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/view/CommentEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/yopeso/lieferando/callback/MealOptionalCommentDialogCallback;->setComment(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/MealOptionalCommentDialog$3;->this$0:Lcom/yopeso/lieferando/dialogs/MealOptionalCommentDialog;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/dialogs/MealOptionalCommentDialog;->dismiss()V

    .line 72
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
