.class public Lcom/yopeso/lieferando/dialogs/FidelityDialog;
.super Landroid/support/v4/app/LRDialogFragment;
.source "FidelityDialog.java"


# static fields
.field private static final FIDELITY_KEY:Ljava/lang/String; = "fidelity_key"

.field private static final MESSAGE_KEY:Ljava/lang/String; = "message_key"

.field private static final POINTS_KEY:Ljava/lang/String; = "points_key"

.field private static final STAMP_KEY:Ljava/lang/String; = "stamp_key"


# instance fields
.field private mListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mPoints:I

.field private mShouldCollectStamp:Z

.field private mShouldDisplayFidelity:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/support/v4/app/LRDialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(ILjava/lang/String;ZZ)Lcom/yopeso/lieferando/dialogs/FidelityDialog;
    .locals 3
    .param p0, "points"    # I
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "shouldDisplayFidelity"    # Z
    .param p3, "shouldCollectStamp"    # Z

    .prologue
    .line 42
    new-instance v1, Lcom/yopeso/lieferando/dialogs/FidelityDialog;

    invoke-direct {v1}, Lcom/yopeso/lieferando/dialogs/FidelityDialog;-><init>()V

    .line 43
    .local v1, "dialog":Lcom/yopeso/lieferando/dialogs/FidelityDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 44
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "points_key"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 45
    const-string v2, "message_key"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v2, "fidelity_key"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 47
    const-string v2, "stamp_key"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 48
    invoke-virtual {v1, v0}, Lcom/yopeso/lieferando/dialogs/FidelityDialog;->setArguments(Landroid/os/Bundle;)V

    .line 49
    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/support/v4/app/LRDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lcom/yopeso/lieferando/dialogs/FidelityDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "points_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yopeso/lieferando/dialogs/FidelityDialog;->mPoints:I

    .line 57
    invoke-virtual {p0}, Lcom/yopeso/lieferando/dialogs/FidelityDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "fidelity_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yopeso/lieferando/dialogs/FidelityDialog;->mShouldDisplayFidelity:Z

    .line 58
    invoke-virtual {p0}, Lcom/yopeso/lieferando/dialogs/FidelityDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "stamp_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yopeso/lieferando/dialogs/FidelityDialog;->mShouldCollectStamp:Z

    .line 59
    const/4 v0, 0x1

    const v1, 0x103000b

    invoke-virtual {p0, v0, v1}, Lcom/yopeso/lieferando/dialogs/FidelityDialog;->setStyle(II)V

    .line 60
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 64
    invoke-virtual {p0}, Lcom/yopeso/lieferando/dialogs/FidelityDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$layout;->fidelity_dialog:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 66
    .local v0, "v":Landroid/view/View;
    iget-boolean v1, p0, Lcom/yopeso/lieferando/dialogs/FidelityDialog;->mShouldCollectStamp:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/yopeso/lieferando/dialogs/FidelityDialog;->mShouldDisplayFidelity:Z

    if-eqz v1, :cond_1

    .line 67
    sget v1, Lcom/yopeso/lieferando/R$id;->PointsForOrder:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v2, "+ "

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/yopeso/lieferando/dialogs/FidelityDialog;->mPoints:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/yopeso/lieferando/dialogs/FidelityDialog;->mPoints:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    sget v1, Lcom/yopeso/lieferando/R$id;->circleIV:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    sget v2, Lcom/yopeso/lieferando/R$drawable;->success_fp_icon:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 69
    sget v1, Lcom/yopeso/lieferando/R$id;->stampsIV:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 70
    sget v1, Lcom/yopeso/lieferando/R$id;->PointsGained:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/dialogs/FidelityDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$string;->fidelity_points_and_stamp_received:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    iget v4, p0, Lcom/yopeso/lieferando/dialogs/FidelityDialog;->mPoints:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    :goto_1
    return-object v0

    .line 67
    :cond_0
    const-string v2, ""

    goto :goto_0

    .line 71
    :cond_1
    iget-boolean v1, p0, Lcom/yopeso/lieferando/dialogs/FidelityDialog;->mShouldCollectStamp:Z

    if-eqz v1, :cond_2

    .line 72
    sget v1, Lcom/yopeso/lieferando/R$id;->PointsForOrder:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "   +"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    sget v1, Lcom/yopeso/lieferando/R$id;->circleIV:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    sget v2, Lcom/yopeso/lieferando/R$drawable;->success_fp_icon:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 74
    sget v1, Lcom/yopeso/lieferando/R$id;->stampsIV:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 75
    sget v1, Lcom/yopeso/lieferando/R$id;->PointsGained:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/dialogs/FidelityDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$string;->stemp_no_fidelity:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 77
    :cond_2
    iget v1, p0, Lcom/yopeso/lieferando/dialogs/FidelityDialog;->mPoints:I

    if-nez v1, :cond_3

    .line 78
    sget v1, Lcom/yopeso/lieferando/R$id;->PointsForOrder:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "   P"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    sget v1, Lcom/yopeso/lieferando/R$id;->circleIV:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    sget v2, Lcom/yopeso/lieferando/R$drawable;->success_fp_icon:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 80
    sget v1, Lcom/yopeso/lieferando/R$id;->PointsGained:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/dialogs/FidelityDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$string;->fidelity_points_some_received:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 82
    :cond_3
    iget v1, p0, Lcom/yopeso/lieferando/dialogs/FidelityDialog;->mPoints:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_4

    .line 83
    sget v1, Lcom/yopeso/lieferando/R$id;->PointsForOrder:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "  -P"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    sget v1, Lcom/yopeso/lieferando/R$id;->circleIV:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    sget v2, Lcom/yopeso/lieferando/R$drawable;->success_fp_deducted_icon:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 85
    sget v1, Lcom/yopeso/lieferando/R$id;->PointsGained:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/dialogs/FidelityDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$string;->fidelity_points_removed:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 88
    :cond_4
    sget v1, Lcom/yopeso/lieferando/R$id;->PointsForOrder:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "+"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/yopeso/lieferando/dialogs/FidelityDialog;->mPoints:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    sget v1, Lcom/yopeso/lieferando/R$id;->circleIV:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    sget v2, Lcom/yopeso/lieferando/R$drawable;->success_fp_icon:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 90
    sget v1, Lcom/yopeso/lieferando/R$id;->PointsGained:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/dialogs/FidelityDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$string;->fidelity_points_received:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    iget v4, p0, Lcom/yopeso/lieferando/dialogs/FidelityDialog;->mPoints:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method public onDestroy()V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 192
    invoke-super {p0}, Landroid/support/v4/app/LRDialogFragment;->onDestroy()V

    .line 201
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 183
    invoke-super {p0, p1}, Landroid/support/v4/app/LRDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 184
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/FidelityDialog;->mListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/yopeso/lieferando/dialogs/FidelityDialog;->mListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 187
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 166
    invoke-super {p0}, Landroid/support/v4/app/LRDialogFragment;->onResume()V

    .line 167
    invoke-virtual {p0}, Lcom/yopeso/lieferando/dialogs/FidelityDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 170
    :try_start_0
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v1

    .line 171
    .local v1, "user":Lcom/yopeso/lieferando/model/user/UserData;
    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/user/UserData;->getFidelityPoints()I

    move-result v2

    iget v3, p0, Lcom/yopeso/lieferando/dialogs/FidelityDialog;->mPoints:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/model/user/UserData;->setFidelityPoints(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    .end local v1    # "user":Lcom/yopeso/lieferando/model/user/UserData;
    :goto_0
    return-void

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/yopeso/lieferando/dialogs/FidelityDialog;->mListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 179
    return-void
.end method
