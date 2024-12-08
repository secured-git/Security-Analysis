.class public Lcom/yopeso/lieferando/dialogs/DatePickerDialog;
.super Landroid/support/v4/app/LRDialogFragment;
.source "DatePickerDialog.java"


# static fields
.field private static final CURRENT_DAY:Ljava/lang/String; = "current_day"

.field private static final CURRENT_MONTH:Ljava/lang/String; = "current_month"

.field private static final CURRENT_YEAR:Ljava/lang/String; = "current_year"


# instance fields
.field private mDay:I

.field private mListener:Lcom/yopeso/lieferando/callback/DatePickerCallBack;

.field private mMonth:I

.field private mPicker:Landroid/widget/DatePicker;

.field private mYear:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 17
    invoke-direct {p0}, Landroid/support/v4/app/LRDialogFragment;-><init>()V

    .line 25
    iput v0, p0, Lcom/yopeso/lieferando/dialogs/DatePickerDialog;->mYear:I

    .line 26
    iput v0, p0, Lcom/yopeso/lieferando/dialogs/DatePickerDialog;->mMonth:I

    .line 27
    iput v0, p0, Lcom/yopeso/lieferando/dialogs/DatePickerDialog;->mDay:I

    .line 17
    return-void
.end method

.method static synthetic access$0(Lcom/yopeso/lieferando/dialogs/DatePickerDialog;)Landroid/widget/DatePicker;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DatePickerDialog;->mPicker:Landroid/widget/DatePicker;

    return-object v0
.end method

.method static synthetic access$1(Lcom/yopeso/lieferando/dialogs/DatePickerDialog;)Lcom/yopeso/lieferando/callback/DatePickerCallBack;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DatePickerDialog;->mListener:Lcom/yopeso/lieferando/callback/DatePickerCallBack;

    return-object v0
.end method

.method static synthetic access$2(Lcom/yopeso/lieferando/dialogs/DatePickerDialog;)I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/yopeso/lieferando/dialogs/DatePickerDialog;->mYear:I

    return v0
.end method

.method static synthetic access$3(Lcom/yopeso/lieferando/dialogs/DatePickerDialog;)I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/yopeso/lieferando/dialogs/DatePickerDialog;->mMonth:I

    return v0
.end method

.method static synthetic access$4(Lcom/yopeso/lieferando/dialogs/DatePickerDialog;)I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/yopeso/lieferando/dialogs/DatePickerDialog;->mDay:I

    return v0
.end method

.method static synthetic access$5(Lcom/yopeso/lieferando/dialogs/DatePickerDialog;I)V
    .locals 0

    .prologue
    .line 25
    iput p1, p0, Lcom/yopeso/lieferando/dialogs/DatePickerDialog;->mYear:I

    return-void
.end method

.method static synthetic access$6(Lcom/yopeso/lieferando/dialogs/DatePickerDialog;I)V
    .locals 0

    .prologue
    .line 26
    iput p1, p0, Lcom/yopeso/lieferando/dialogs/DatePickerDialog;->mMonth:I

    return-void
.end method

.method static synthetic access$7(Lcom/yopeso/lieferando/dialogs/DatePickerDialog;I)V
    .locals 0

    .prologue
    .line 27
    iput p1, p0, Lcom/yopeso/lieferando/dialogs/DatePickerDialog;->mDay:I

    return-void
.end method

.method public static newInstance(III)Lcom/yopeso/lieferando/dialogs/DatePickerDialog;
    .locals 3
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I

    .prologue
    .line 32
    new-instance v1, Lcom/yopeso/lieferando/dialogs/DatePickerDialog;

    invoke-direct {v1}, Lcom/yopeso/lieferando/dialogs/DatePickerDialog;-><init>()V

    .line 33
    .local v1, "dialog":Lcom/yopeso/lieferando/dialogs/DatePickerDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 34
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "current_day"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 35
    const-string v2, "current_month"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 36
    const-string v2, "current_year"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 38
    invoke-virtual {v1, v0}, Lcom/yopeso/lieferando/dialogs/DatePickerDialog;->setArguments(Landroid/os/Bundle;)V

    .line 39
    return-object v1
.end method


# virtual methods
.method public getListener()Lcom/yopeso/lieferando/callback/DatePickerCallBack;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/DatePickerDialog;->mListener:Lcom/yopeso/lieferando/callback/DatePickerCallBack;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/support/v4/app/LRDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/yopeso/lieferando/dialogs/DatePickerDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "current_day"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yopeso/lieferando/dialogs/DatePickerDialog;->mDay:I

    .line 47
    invoke-virtual {p0}, Lcom/yopeso/lieferando/dialogs/DatePickerDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "current_month"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yopeso/lieferando/dialogs/DatePickerDialog;->mMonth:I

    .line 48
    invoke-virtual {p0}, Lcom/yopeso/lieferando/dialogs/DatePickerDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "current_year"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yopeso/lieferando/dialogs/DatePickerDialog;->mYear:I

    .line 50
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/dialogs/DatePickerDialog;->setShowsDialog(Z)V

    .line 51
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 55
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/dialogs/DatePickerDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 56
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/yopeso/lieferando/dialogs/DatePickerDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$layout;->custom_date_picker:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 57
    .local v1, "view":Landroid/view/View;
    sget v2, Lcom/yopeso/lieferando/R$id;->datePicker:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/DatePicker;

    iput-object v2, p0, Lcom/yopeso/lieferando/dialogs/DatePickerDialog;->mPicker:Landroid/widget/DatePicker;

    .line 58
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 59
    sget v2, Lcom/yopeso/lieferando/R$string;->setText:I

    new-instance v3, Lcom/yopeso/lieferando/dialogs/DatePickerDialog$1;

    invoke-direct {v3, p0}, Lcom/yopeso/lieferando/dialogs/DatePickerDialog$1;-><init>(Lcom/yopeso/lieferando/dialogs/DatePickerDialog;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 67
    sget v2, Lcom/yopeso/lieferando/R$string;->cancel_button_text:I

    new-instance v3, Lcom/yopeso/lieferando/dialogs/DatePickerDialog$2;

    invoke-direct {v3, p0}, Lcom/yopeso/lieferando/dialogs/DatePickerDialog$2;-><init>(Lcom/yopeso/lieferando/dialogs/DatePickerDialog;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 74
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method

.method public onResume()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    .line 79
    invoke-super {p0}, Landroid/support/v4/app/LRDialogFragment;->onResume()V

    .line 80
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 82
    .local v3, "now":Ljava/util/Calendar;
    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v2, v4, -0xa

    .line 83
    .local v2, "maxYear":I
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 84
    .local v1, "maxMonth":I
    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 86
    .local v0, "maxDay":I
    iget v4, p0, Lcom/yopeso/lieferando/dialogs/DatePickerDialog;->mYear:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 87
    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, -0x12

    iput v4, p0, Lcom/yopeso/lieferando/dialogs/DatePickerDialog;->mYear:I

    .line 88
    iput v1, p0, Lcom/yopeso/lieferando/dialogs/DatePickerDialog;->mMonth:I

    .line 89
    iput v0, p0, Lcom/yopeso/lieferando/dialogs/DatePickerDialog;->mDay:I

    .line 92
    :cond_0
    iget-object v4, p0, Lcom/yopeso/lieferando/dialogs/DatePickerDialog;->mPicker:Landroid/widget/DatePicker;

    iget v5, p0, Lcom/yopeso/lieferando/dialogs/DatePickerDialog;->mYear:I

    iget v6, p0, Lcom/yopeso/lieferando/dialogs/DatePickerDialog;->mMonth:I

    iget v7, p0, Lcom/yopeso/lieferando/dialogs/DatePickerDialog;->mDay:I

    new-instance v8, Lcom/yopeso/lieferando/dialogs/DatePickerDialog$3;

    invoke-direct {v8, p0, v2, v1, v0}, Lcom/yopeso/lieferando/dialogs/DatePickerDialog$3;-><init>(Lcom/yopeso/lieferando/dialogs/DatePickerDialog;III)V

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    .line 112
    return-void
.end method

.method public setListener(Lcom/yopeso/lieferando/callback/DatePickerCallBack;)V
    .locals 0
    .param p1, "listener"    # Lcom/yopeso/lieferando/callback/DatePickerCallBack;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/yopeso/lieferando/dialogs/DatePickerDialog;->mListener:Lcom/yopeso/lieferando/callback/DatePickerCallBack;

    .line 120
    return-void
.end method
