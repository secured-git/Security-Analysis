.class public Lcom/yopeso/lieferando/dialogs/TakePictureDialog;
.super Landroid/support/v4/app/LRDialogFragment;
.source "TakePictureDialog.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private takePictureCallback:Lcom/yopeso/lieferando/callback/TakePictureCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/yopeso/lieferando/dialogs/TakePictureDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yopeso/lieferando/dialogs/TakePictureDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/support/v4/app/LRDialogFragment;-><init>()V

    .line 21
    return-void
.end method

.method public constructor <init>(Lcom/yopeso/lieferando/callback/TakePictureCallback;)V
    .locals 0
    .param p1, "takePictureCallback"    # Lcom/yopeso/lieferando/callback/TakePictureCallback;

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/support/v4/app/LRDialogFragment;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/yopeso/lieferando/dialogs/TakePictureDialog;->takePictureCallback:Lcom/yopeso/lieferando/callback/TakePictureCallback;

    .line 24
    return-void
.end method

.method static synthetic access$0(Lcom/yopeso/lieferando/dialogs/TakePictureDialog;)Lcom/yopeso/lieferando/callback/TakePictureCallback;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/TakePictureDialog;->takePictureCallback:Lcom/yopeso/lieferando/callback/TakePictureCallback;

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/yopeso/lieferando/dialogs/TakePictureDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 29
    sget v3, Lcom/yopeso/lieferando/R$layout;->take_picture_dialog:I

    const/4 v4, 0x0

    .line 28
    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 31
    .local v1, "view":Landroid/view/View;
    sget v2, Lcom/yopeso/lieferando/R$id;->takePictureLL:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 32
    new-instance v3, Lcom/yopeso/lieferando/dialogs/TakePictureDialog$1;

    invoke-direct {v3, p0}, Lcom/yopeso/lieferando/dialogs/TakePictureDialog$1;-><init>(Lcom/yopeso/lieferando/dialogs/TakePictureDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    sget v2, Lcom/yopeso/lieferando/R$id;->choosePictureLL:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 43
    new-instance v3, Lcom/yopeso/lieferando/dialogs/TakePictureDialog$2;

    invoke-direct {v3, p0}, Lcom/yopeso/lieferando/dialogs/TakePictureDialog$2;-><init>(Lcom/yopeso/lieferando/dialogs/TakePictureDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    sget v2, Lcom/yopeso/lieferando/R$id;->cancelLL:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 54
    new-instance v3, Lcom/yopeso/lieferando/dialogs/TakePictureDialog$3;

    invoke-direct {v3, p0}, Lcom/yopeso/lieferando/dialogs/TakePictureDialog$3;-><init>(Lcom/yopeso/lieferando/dialogs/TakePictureDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/dialogs/TakePictureDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 63
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 64
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method
