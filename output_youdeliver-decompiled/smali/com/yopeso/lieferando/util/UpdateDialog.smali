.class public Lcom/yopeso/lieferando/util/UpdateDialog;
.super Landroid/support/v4/app/LRDialogFragment;
.source "UpdateDialog.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "update_dialog_tag"


# instance fields
.field private settings:Lcom/yopeso/lieferando/model/SettingsContent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/support/v4/app/LRDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/yopeso/lieferando/util/UpdateDialog;)Lcom/yopeso/lieferando/model/SettingsContent;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/yopeso/lieferando/util/UpdateDialog;->settings:Lcom/yopeso/lieferando/model/SettingsContent;

    return-object v0
.end method

.method private goToMainActivity()V
    .locals 4

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/yopeso/lieferando/util/UpdateDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/yopeso/lieferando/util/UpdateDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackOpenApp(Landroid/content/Context;)V

    .line 149
    invoke-virtual {p0}, Lcom/yopeso/lieferando/util/UpdateDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/yopeso/lieferando/util/DeviceUtils;->isHoneycombTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 151
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/util/UpdateDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/yopeso/lieferando/activity/tablet/SearchActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 152
    .local v0, "runApp":Landroid/content/Intent;
    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 153
    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/util/UpdateDialog;->startActivity(Landroid/content/Intent;)V

    .line 157
    .end local v0    # "runApp":Landroid/content/Intent;
    :goto_0
    invoke-virtual {p0}, Lcom/yopeso/lieferando/util/UpdateDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 159
    :cond_0
    return-void

    .line 155
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/util/UpdateDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/yopeso/lieferando/activity/SearchActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/yopeso/lieferando/util/UpdateDialog;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 30
    invoke-super {p0, p1}, Landroid/support/v4/app/LRDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {p0, v1}, Lcom/yopeso/lieferando/util/UpdateDialog;->setShowsDialog(Z)V

    .line 32
    invoke-virtual {p0, v1}, Lcom/yopeso/lieferando/util/UpdateDialog;->setCancelable(Z)V

    .line 33
    const v0, 0x103000b

    invoke-virtual {p0, v1, v0}, Lcom/yopeso/lieferando/util/UpdateDialog;->setStyle(II)V

    .line 34
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/yopeso/lieferando/util/UpdateDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    sget v6, Lcom/yopeso/lieferando/R$layout;->update_dialog:I

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 87
    .local v3, "v":Landroid/view/View;
    sget v5, Lcom/yopeso/lieferando/R$id;->updateMsgs:I

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 88
    .local v2, "updateMsgsLL":Landroid/widget/LinearLayout;
    invoke-virtual {p0}, Lcom/yopeso/lieferando/util/UpdateDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    check-cast v5, Lcom/yopeso/lieferando/custom/LRActivity;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/custom/LRActivity;->getApplicationCore()Lcom/yopeso/lieferando/LieferandoApplication;

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v5

    iput-object v5, p0, Lcom/yopeso/lieferando/util/UpdateDialog;->settings:Lcom/yopeso/lieferando/model/SettingsContent;

    .line 89
    sget v5, Lcom/yopeso/lieferando/R$id;->updateVersion:I

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/util/UpdateDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    sget v7, Lcom/yopeso/lieferando/R$string;->app_update_title2:I

    invoke-virtual {v6, v7}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/yopeso/lieferando/util/UpdateDialog;->settings:Lcom/yopeso/lieferando/model/SettingsContent;

    invoke-virtual {v9}, Lcom/yopeso/lieferando/model/SettingsContent;->getmLatestVersion()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v5, p0, Lcom/yopeso/lieferando/util/UpdateDialog;->settings:Lcom/yopeso/lieferando/model/SettingsContent;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/SettingsContent;->getmUpdateMessages()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/yopeso/lieferando/util/UpdateDialog;->settings:Lcom/yopeso/lieferando/model/SettingsContent;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/SettingsContent;->getmUpdateMessages()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 92
    iget-object v5, p0, Lcom/yopeso/lieferando/util/UpdateDialog;->settings:Lcom/yopeso/lieferando/model/SettingsContent;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/SettingsContent;->getmUpdateMessages()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 115
    :goto_1
    sget v5, Lcom/yopeso/lieferando/R$id;->OKButton:I

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    new-instance v6, Lcom/yopeso/lieferando/util/UpdateDialog$1;

    invoke-direct {v6, p0}, Lcom/yopeso/lieferando/util/UpdateDialog$1;-><init>(Lcom/yopeso/lieferando/util/UpdateDialog;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    return-object v3

    .line 92
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 93
    .local v1, "msg":Ljava/lang/String;
    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/util/UpdateDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 94
    .local v4, "valueTV":Landroid/widget/TextView;
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    sget v6, Lcom/yopeso/lieferando/R$drawable;->btn_check_update:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 96
    invoke-virtual {p0}, Lcom/yopeso/lieferando/util/UpdateDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/yopeso/lieferando/R$color;->update_dialog_text2:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 97
    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 98
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x2

    invoke-direct {v0, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 99
    .local v0, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v6, 0x0

    const/4 v7, 0x5

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 100
    invoke-virtual {v2, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 105
    .end local v0    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v1    # "msg":Ljava/lang/String;
    .end local v4    # "valueTV":Landroid/widget/TextView;
    :cond_1
    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/util/UpdateDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 106
    .restart local v4    # "valueTV":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/yopeso/lieferando/util/UpdateDialog;->settings:Lcom/yopeso/lieferando/model/SettingsContent;

    invoke-virtual {v5}, Lcom/yopeso/lieferando/model/SettingsContent;->getmUpdateMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    sget v5, Lcom/yopeso/lieferando/R$drawable;->btn_check_update:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 108
    invoke-virtual {p0}, Lcom/yopeso/lieferando/util/UpdateDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/yopeso/lieferando/R$color;->update_dialog_text2:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 109
    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 110
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, -0x2

    invoke-direct {v0, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 111
    .restart local v0    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v5, 0x0

    const/4 v6, 0x5

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 112
    invoke-virtual {v2, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 138
    invoke-super {p0, p1}, Landroid/support/v4/app/LRDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 139
    iget-object v0, p0, Lcom/yopeso/lieferando/util/UpdateDialog;->settings:Lcom/yopeso/lieferando/model/SettingsContent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yopeso/lieferando/util/UpdateDialog;->settings:Lcom/yopeso/lieferando/model/SettingsContent;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/model/SettingsContent;->isRequiredUpdateAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/yopeso/lieferando/util/UpdateDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/yopeso/lieferando/util/UpdateDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 144
    :goto_0
    return-void

    .line 142
    :cond_0
    invoke-direct {p0}, Lcom/yopeso/lieferando/util/UpdateDialog;->goToMainActivity()V

    goto :goto_0
.end method
