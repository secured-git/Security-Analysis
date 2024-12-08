.class public Lcom/yopeso/lieferando/dialogs/RateAppFromPushDialog;
.super Landroid/support/v4/app/LRDialogFragment;
.source "RateAppFromPushDialog.java"


# static fields
.field private static final MSG_KEY:Ljava/lang/String; = "msg_key"

.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/yopeso/lieferando/dialogs/RateAppFromPushDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yopeso/lieferando/dialogs/RateAppFromPushDialog;->TAG:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/support/v4/app/LRDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/yopeso/lieferando/dialogs/RateAppFromPushDialog;)V
    .locals 0

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/yopeso/lieferando/dialogs/RateAppFromPushDialog;->rateApp()V

    return-void
.end method

.method static synthetic access$1(Lcom/yopeso/lieferando/dialogs/RateAppFromPushDialog;)V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/yopeso/lieferando/dialogs/RateAppFromPushDialog;->redirectToEmail()V

    return-void
.end method

.method public static newInstance()Lcom/yopeso/lieferando/dialogs/RateAppFromPushDialog;
    .locals 2

    .prologue
    .line 36
    new-instance v1, Lcom/yopeso/lieferando/dialogs/RateAppFromPushDialog;

    invoke-direct {v1}, Lcom/yopeso/lieferando/dialogs/RateAppFromPushDialog;-><init>()V

    .line 37
    .local v1, "dialog":Lcom/yopeso/lieferando/dialogs/RateAppFromPushDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 39
    .local v0, "b":Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Lcom/yopeso/lieferando/dialogs/RateAppFromPushDialog;->setArguments(Landroid/os/Bundle;)V

    .line 40
    return-object v1
.end method

.method private rateApp()V
    .locals 3

    .prologue
    .line 166
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/yopeso/lieferando/net/config/IConfig;->isPoland()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 167
    const-string v2, "market://details?id=com.yourdelivery.pyszne"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 177
    .local v1, "marketUri":Landroid/net/Uri;
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 178
    .local v0, "marketIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/yopeso/lieferando/dialogs/RateAppFromPushDialog;->startActivity(Landroid/content/Intent;)V

    .line 179
    return-void

    .line 169
    .end local v0    # "marketIntent":Landroid/content/Intent;
    .end local v1    # "marketUri":Landroid/net/Uri;
    :cond_0
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/yopeso/lieferando/net/config/IConfig;->isTakeaway()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 170
    const-string v2, "market://details?id=de.lieferservice.android"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 171
    .restart local v1    # "marketUri":Landroid/net/Uri;
    goto :goto_0

    .line 173
    .end local v1    # "marketUri":Landroid/net/Uri;
    :cond_1
    const-string v2, "market://details?id=com.yopeso.lieferando"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .restart local v1    # "marketUri":Landroid/net/Uri;
    goto :goto_0
.end method

.method private redirectToEmail()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 137
    const/4 v4, 0x0

    .line 139
    .local v4, "pInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Lcom/yopeso/lieferando/dialogs/RateAppFromPushDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {p0}, Lcom/yopeso/lieferando/dialogs/RateAppFromPushDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 143
    :goto_0
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 144
    .local v5, "version":Ljava/lang/String;
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 145
    .local v2, "manufacturer":Ljava/lang/String;
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 146
    .local v3, "model":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.SEND"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 147
    .local v1, "i":Landroid/content/Intent;
    const-string v6, "android.intent.extra.EMAIL"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    sget v8, Lcom/yopeso/lieferando/R$string;->support:I

    invoke-virtual {p0, v8}, Lcom/yopeso/lieferando/dialogs/RateAppFromPushDialog;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    const-string v6, "android.intent.extra.SUBJECT"

    sget v7, Lcom/yopeso/lieferando/R$string;->feedback_subject:I

    invoke-virtual {p0, v7}, Lcom/yopeso/lieferando/dialogs/RateAppFromPushDialog;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    if-eqz v5, :cond_0

    .line 150
    const-string v6, "android.intent.extra.TEXT"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "\n_________________________\n"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v8, Lcom/yopeso/lieferando/R$string;->app_version:I

    invoke-virtual {p0, v8}, Lcom/yopeso/lieferando/dialogs/RateAppFromPushDialog;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/yopeso/lieferando/R$string;->phone_manufacture:I

    invoke-virtual {p0, v8}, Lcom/yopeso/lieferando/dialogs/RateAppFromPushDialog;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 151
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_________________________\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 150
    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    :goto_1
    const-string v6, "plain/text"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/yopeso/lieferando/dialogs/RateAppFromPushDialog;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 163
    :goto_2
    return-void

    .line 140
    .end local v1    # "i":Landroid/content/Intent;
    .end local v2    # "manufacturer":Ljava/lang/String;
    .end local v3    # "model":Ljava/lang/String;
    .end local v5    # "version":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 153
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "i":Landroid/content/Intent;
    .restart local v2    # "manufacturer":Ljava/lang/String;
    .restart local v3    # "model":Ljava/lang/String;
    .restart local v5    # "version":Ljava/lang/String;
    :cond_0
    const-string v6, "android.intent.extra.TEXT"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "_________________________\n"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v8, Lcom/yopeso/lieferando/R$string;->phone_manufacture:I

    invoke-virtual {p0, v8}, Lcom/yopeso/lieferando/dialogs/RateAppFromPushDialog;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 154
    const-string v8, "_________________________\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 153
    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 159
    :catch_1
    move-exception v0

    .line 160
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 161
    invoke-virtual {p0}, Lcom/yopeso/lieferando/dialogs/RateAppFromPushDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    sget v7, Lcom/yopeso/lieferando/R$string;->feedback_error:I

    invoke-static {v6, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_2
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/support/v4/app/LRDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const/4 v0, 0x0

    const v1, 0x103000b

    invoke-virtual {p0, v0, v1}, Lcom/yopeso/lieferando/dialogs/RateAppFromPushDialog;->setStyle(II)V

    .line 48
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 53
    invoke-static {}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackRateApp()V

    .line 54
    invoke-virtual {p0}, Lcom/yopeso/lieferando/dialogs/RateAppFromPushDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$layout;->rateapp_dialog:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 57
    .local v1, "view":Landroid/view/View;
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v2

    if-nez v2, :cond_0

    .line 58
    sget v2, Lcom/yopeso/lieferando/R$id;->button5Stars:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/SettingsContent;->getDynamicButtonFilter()Landroid/graphics/PorterDuffColorFilter;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 59
    sget v2, Lcom/yopeso/lieferando/R$id;->button4Stars:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/SettingsContent;->getDynamicButtonFilter()Landroid/graphics/PorterDuffColorFilter;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 60
    sget v2, Lcom/yopeso/lieferando/R$id;->button3Stars:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/SettingsContent;->getDynamicButtonFilter()Landroid/graphics/PorterDuffColorFilter;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 61
    sget v2, Lcom/yopeso/lieferando/R$id;->button2Stars:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/SettingsContent;->getDynamicButtonFilter()Landroid/graphics/PorterDuffColorFilter;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 62
    sget v2, Lcom/yopeso/lieferando/R$id;->button1Stars:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/SettingsContent;->getDynamicButtonFilter()Landroid/graphics/PorterDuffColorFilter;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 63
    sget v2, Lcom/yopeso/lieferando/R$id;->buttonRateLater:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {}, Lcom/yopeso/lieferando/LieferandoApplication;->getSettingsModel()Lcom/yopeso/lieferando/model/SettingsContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yopeso/lieferando/model/SettingsContent;->getDynamicButtonFilter()Landroid/graphics/PorterDuffColorFilter;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 65
    :cond_0
    sget v2, Lcom/yopeso/lieferando/R$id;->button5Stars:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 66
    new-instance v3, Lcom/yopeso/lieferando/dialogs/RateAppFromPushDialog$1;

    invoke-direct {v3, p0}, Lcom/yopeso/lieferando/dialogs/RateAppFromPushDialog$1;-><init>(Lcom/yopeso/lieferando/dialogs/RateAppFromPushDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    sget v2, Lcom/yopeso/lieferando/R$id;->button4Stars:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 77
    new-instance v3, Lcom/yopeso/lieferando/dialogs/RateAppFromPushDialog$2;

    invoke-direct {v3, p0}, Lcom/yopeso/lieferando/dialogs/RateAppFromPushDialog$2;-><init>(Lcom/yopeso/lieferando/dialogs/RateAppFromPushDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    sget v2, Lcom/yopeso/lieferando/R$id;->button3Stars:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 88
    new-instance v3, Lcom/yopeso/lieferando/dialogs/RateAppFromPushDialog$3;

    invoke-direct {v3, p0}, Lcom/yopeso/lieferando/dialogs/RateAppFromPushDialog$3;-><init>(Lcom/yopeso/lieferando/dialogs/RateAppFromPushDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    sget v2, Lcom/yopeso/lieferando/R$id;->button2Stars:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 99
    new-instance v3, Lcom/yopeso/lieferando/dialogs/RateAppFromPushDialog$4;

    invoke-direct {v3, p0}, Lcom/yopeso/lieferando/dialogs/RateAppFromPushDialog$4;-><init>(Lcom/yopeso/lieferando/dialogs/RateAppFromPushDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    sget v2, Lcom/yopeso/lieferando/R$id;->button1Stars:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 110
    new-instance v3, Lcom/yopeso/lieferando/dialogs/RateAppFromPushDialog$5;

    invoke-direct {v3, p0}, Lcom/yopeso/lieferando/dialogs/RateAppFromPushDialog$5;-><init>(Lcom/yopeso/lieferando/dialogs/RateAppFromPushDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    sget v2, Lcom/yopeso/lieferando/R$id;->buttonRateLater:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 121
    new-instance v3, Lcom/yopeso/lieferando/dialogs/RateAppFromPushDialog$6;

    invoke-direct {v3, p0}, Lcom/yopeso/lieferando/dialogs/RateAppFromPushDialog$6;-><init>(Lcom/yopeso/lieferando/dialogs/RateAppFromPushDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/yopeso/lieferando/dialogs/RateAppFromPushDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 132
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lcom/yopeso/lieferando/R$string;->rate_app_title:I

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 133
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 211
    invoke-super {p0, p1}, Landroid/support/v4/app/LRDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 212
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 205
    invoke-super {p0}, Landroid/support/v4/app/LRDialogFragment;->onResume()V

    .line 206
    invoke-virtual {p0}, Lcom/yopeso/lieferando/dialogs/RateAppFromPushDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 207
    return-void
.end method
