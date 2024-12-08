.class public Lcom/yopeso/lieferando/dialogs/MealOptionalCommentDialog;
.super Landroid/support/v4/app/LRDialogFragment;
.source "MealOptionalCommentDialog.java"


# static fields
.field private static final CURRENT_CUMMENT_KEY:Ljava/lang/String; = "current_comment_key"


# instance fields
.field private mCurrentComment:Ljava/lang/String;

.field private mListener:Lcom/yopeso/lieferando/callback/MealOptionalCommentDialogCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/support/v4/app/LRDialogFragment;-><init>()V

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/yopeso/lieferando/dialogs/MealOptionalCommentDialog;->mCurrentComment:Ljava/lang/String;

    .line 20
    return-void
.end method

.method static synthetic access$0(Lcom/yopeso/lieferando/dialogs/MealOptionalCommentDialog;)Lcom/yopeso/lieferando/callback/MealOptionalCommentDialogCallback;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/MealOptionalCommentDialog;->mListener:Lcom/yopeso/lieferando/callback/MealOptionalCommentDialogCallback;

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/yopeso/lieferando/dialogs/MealOptionalCommentDialog;
    .locals 3
    .param p0, "currentComment"    # Ljava/lang/String;

    .prologue
    .line 29
    new-instance v1, Lcom/yopeso/lieferando/dialogs/MealOptionalCommentDialog;

    invoke-direct {v1}, Lcom/yopeso/lieferando/dialogs/MealOptionalCommentDialog;-><init>()V

    .line 30
    .local v1, "dialog":Lcom/yopeso/lieferando/dialogs/MealOptionalCommentDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 31
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "current_comment_key"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-virtual {v1, v0}, Lcom/yopeso/lieferando/dialogs/MealOptionalCommentDialog;->setArguments(Landroid/os/Bundle;)V

    .line 33
    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/support/v4/app/LRDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Lcom/yopeso/lieferando/dialogs/MealOptionalCommentDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "current_comment_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yopeso/lieferando/dialogs/MealOptionalCommentDialog;->mCurrentComment:Ljava/lang/String;

    .line 40
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/dialogs/MealOptionalCommentDialog;->setShowsDialog(Z)V

    .line 41
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/yopeso/lieferando/dialogs/MealOptionalCommentDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/yopeso/lieferando/R$layout;->observation_textview_bkg:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 46
    .local v1, "contentView":Landroid/view/View;
    sget v3, Lcom/yopeso/lieferando/R$id;->observationText:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/yopeso/lieferando/view/CommentEditText;

    .line 47
    .local v2, "currentCommentEditText":Lcom/yopeso/lieferando/view/CommentEditText;
    iget-object v3, p0, Lcom/yopeso/lieferando/dialogs/MealOptionalCommentDialog;->mCurrentComment:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/yopeso/lieferando/view/CommentEditText;->setText(Ljava/lang/CharSequence;)V

    .line 49
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/dialogs/MealOptionalCommentDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 50
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 51
    sget v3, Lcom/yopeso/lieferando/R$string;->ok_button_text:I

    new-instance v4, Lcom/yopeso/lieferando/dialogs/MealOptionalCommentDialog$1;

    invoke-direct {v4, p0, v2}, Lcom/yopeso/lieferando/dialogs/MealOptionalCommentDialog$1;-><init>(Lcom/yopeso/lieferando/dialogs/MealOptionalCommentDialog;Lcom/yopeso/lieferando/view/CommentEditText;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 57
    sget v3, Lcom/yopeso/lieferando/R$string;->cancel_button_text:I

    new-instance v4, Lcom/yopeso/lieferando/dialogs/MealOptionalCommentDialog$2;

    invoke-direct {v4, p0}, Lcom/yopeso/lieferando/dialogs/MealOptionalCommentDialog$2;-><init>(Lcom/yopeso/lieferando/dialogs/MealOptionalCommentDialog;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 64
    new-instance v3, Lcom/yopeso/lieferando/dialogs/MealOptionalCommentDialog$3;

    invoke-direct {v3, p0, v2}, Lcom/yopeso/lieferando/dialogs/MealOptionalCommentDialog$3;-><init>(Lcom/yopeso/lieferando/dialogs/MealOptionalCommentDialog;Lcom/yopeso/lieferando/view/CommentEditText;)V

    invoke-virtual {v2, v3}, Lcom/yopeso/lieferando/view/CommentEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 76
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method

.method public setListener(Lcom/yopeso/lieferando/callback/MealOptionalCommentDialogCallback;)V
    .locals 0
    .param p1, "listener"    # Lcom/yopeso/lieferando/callback/MealOptionalCommentDialogCallback;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/yopeso/lieferando/dialogs/MealOptionalCommentDialog;->mListener:Lcom/yopeso/lieferando/callback/MealOptionalCommentDialogCallback;

    .line 82
    return-void
.end method
