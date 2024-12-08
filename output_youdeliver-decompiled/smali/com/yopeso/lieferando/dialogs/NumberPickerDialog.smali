.class public Lcom/yopeso/lieferando/dialogs/NumberPickerDialog;
.super Landroid/support/v4/app/LRDialogFragment;
.source "NumberPickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final CURRENT_NR_KEY:Ljava/lang/String; = "current_nr_key"

.field private static final MAX_AMOUNT_KEY:Ljava/lang/String; = "max_amount_key"


# instance fields
.field private mCurrentNumber:I

.field private mMaxAmount:I

.field private mNumberEditText:Landroid/widget/EditText;

.field private mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/support/v4/app/LRDialogFragment;-><init>()V

    .line 26
    return-void
.end method

.method public static newInstance(II)Lcom/yopeso/lieferando/dialogs/NumberPickerDialog;
    .locals 3
    .param p0, "currentNumber"    # I
    .param p1, "maxAmount"    # I

    .prologue
    .line 29
    new-instance v1, Lcom/yopeso/lieferando/dialogs/NumberPickerDialog;

    invoke-direct {v1}, Lcom/yopeso/lieferando/dialogs/NumberPickerDialog;-><init>()V

    .line 30
    .local v1, "dialog":Lcom/yopeso/lieferando/dialogs/NumberPickerDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 31
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "current_nr_key"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 32
    const-string v2, "max_amount_key"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 33
    invoke-virtual {v1, v0}, Lcom/yopeso/lieferando/dialogs/NumberPickerDialog;->setArguments(Landroid/os/Bundle;)V

    .line 34
    return-object v1
.end method


# virtual methods
.method public getNumberOfExtras()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/yopeso/lieferando/dialogs/NumberPickerDialog;->mCurrentNumber:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 69
    .local v0, "id":I
    sget v1, Lcom/yopeso/lieferando/R$id;->upButton:I

    if-ne v0, v1, :cond_1

    .line 70
    iget v1, p0, Lcom/yopeso/lieferando/dialogs/NumberPickerDialog;->mCurrentNumber:I

    iget v2, p0, Lcom/yopeso/lieferando/dialogs/NumberPickerDialog;->mMaxAmount:I

    if-ge v1, v2, :cond_0

    .line 71
    iget v1, p0, Lcom/yopeso/lieferando/dialogs/NumberPickerDialog;->mCurrentNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/yopeso/lieferando/dialogs/NumberPickerDialog;->mCurrentNumber:I

    .line 72
    iget-object v1, p0, Lcom/yopeso/lieferando/dialogs/NumberPickerDialog;->mNumberEditText:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/yopeso/lieferando/dialogs/NumberPickerDialog;->mCurrentNumber:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    sget v1, Lcom/yopeso/lieferando/R$id;->downButton:I

    if-ne v0, v1, :cond_0

    .line 75
    iget v1, p0, Lcom/yopeso/lieferando/dialogs/NumberPickerDialog;->mCurrentNumber:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 76
    iget v1, p0, Lcom/yopeso/lieferando/dialogs/NumberPickerDialog;->mCurrentNumber:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/yopeso/lieferando/dialogs/NumberPickerDialog;->mCurrentNumber:I

    .line 77
    iget-object v1, p0, Lcom/yopeso/lieferando/dialogs/NumberPickerDialog;->mNumberEditText:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/yopeso/lieferando/dialogs/NumberPickerDialog;->mCurrentNumber:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/support/v4/app/LRDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lcom/yopeso/lieferando/dialogs/NumberPickerDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "current_nr_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yopeso/lieferando/dialogs/NumberPickerDialog;->mCurrentNumber:I

    .line 41
    invoke-virtual {p0}, Lcom/yopeso/lieferando/dialogs/NumberPickerDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "max_amount_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yopeso/lieferando/dialogs/NumberPickerDialog;->mMaxAmount:I

    .line 42
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/dialogs/NumberPickerDialog;->setShowsDialog(Z)V

    .line 43
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 47
    invoke-virtual {p0}, Lcom/yopeso/lieferando/dialogs/NumberPickerDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$layout;->number_picker_layout:I

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 48
    .local v1, "contentView":Landroid/view/View;
    sget v2, Lcom/yopeso/lieferando/R$id;->upButton:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    sget v2, Lcom/yopeso/lieferando/R$id;->downButton:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    sget v2, Lcom/yopeso/lieferando/R$id;->numberEditText:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/yopeso/lieferando/dialogs/NumberPickerDialog;->mNumberEditText:Landroid/widget/EditText;

    .line 51
    iget-object v2, p0, Lcom/yopeso/lieferando/dialogs/NumberPickerDialog;->mNumberEditText:Landroid/widget/EditText;

    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/yopeso/lieferando/dialogs/NumberPickerDialog;->mCurrentNumber:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v2, p0, Lcom/yopeso/lieferando/dialogs/NumberPickerDialog;->mNumberEditText:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 53
    iget-object v2, p0, Lcom/yopeso/lieferando/dialogs/NumberPickerDialog;->mNumberEditText:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 54
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/dialogs/NumberPickerDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 55
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    sget v2, Lcom/yopeso/lieferando/R$string;->saveButton:I

    iget-object v3, p0, Lcom/yopeso/lieferando/dialogs/NumberPickerDialog;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 56
    sget v2, Lcom/yopeso/lieferando/R$string;->cancel_button_text:I

    new-instance v3, Lcom/yopeso/lieferando/dialogs/NumberPickerDialog$1;

    invoke-direct {v3, p0}, Lcom/yopeso/lieferando/dialogs/NumberPickerDialog$1;-><init>(Lcom/yopeso/lieferando/dialogs/NumberPickerDialog;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 62
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 63
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method

.method public setPositivButtonActionListener(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/yopeso/lieferando/dialogs/NumberPickerDialog;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 86
    return-void
.end method
