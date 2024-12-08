.class Lcom/yopeso/lieferando/dialogs/RateAppUtils$1;
.super Ljava/lang/Object;
.source "RateAppUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/dialogs/RateAppUtils;->showDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$manufacturer:Ljava/lang/String;

.field private final synthetic val$model:Ljava/lang/String;

.field private final synthetic val$res:Landroid/content/res/Resources;

.field private final synthetic val$version:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/dialogs/RateAppUtils$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/yopeso/lieferando/dialogs/RateAppUtils$1;->val$res:Landroid/content/res/Resources;

    iput-object p3, p0, Lcom/yopeso/lieferando/dialogs/RateAppUtils$1;->val$version:Ljava/lang/String;

    iput-object p4, p0, Lcom/yopeso/lieferando/dialogs/RateAppUtils$1;->val$manufacturer:Ljava/lang/String;

    iput-object p5, p0, Lcom/yopeso/lieferando/dialogs/RateAppUtils$1;->val$model:Ljava/lang/String;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 106
    iget-object v2, p0, Lcom/yopeso/lieferando/dialogs/RateAppUtils$1;->val$context:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/yopeso/lieferando/dialogs/RateAppUtils;->setIfCanShowRateAppDialog(ZLandroid/content/Context;)V

    .line 108
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 109
    .local v1, "i":Landroid/content/Intent;
    const-string v2, "android.intent.extra.EMAIL"

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, p0, Lcom/yopeso/lieferando/dialogs/RateAppUtils$1;->val$res:Landroid/content/res/Resources;

    sget v5, Lcom/yopeso/lieferando/R$string;->support:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    const-string v2, "android.intent.extra.SUBJECT"

    iget-object v3, p0, Lcom/yopeso/lieferando/dialogs/RateAppUtils$1;->val$res:Landroid/content/res/Resources;

    sget v4, Lcom/yopeso/lieferando/R$string;->feedback_subject:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    iget-object v2, p0, Lcom/yopeso/lieferando/dialogs/RateAppUtils$1;->val$version:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 112
    const-string v2, "android.intent.extra.TEXT"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\n_________________________\n"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/yopeso/lieferando/dialogs/RateAppUtils$1;->val$res:Landroid/content/res/Resources;

    sget v5, Lcom/yopeso/lieferando/R$string;->app_version:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/yopeso/lieferando/dialogs/RateAppUtils$1;->val$version:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/yopeso/lieferando/dialogs/RateAppUtils$1;->val$res:Landroid/content/res/Resources;

    sget v5, Lcom/yopeso/lieferando/R$string;->phone_manufacture:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 113
    iget-object v4, p0, Lcom/yopeso/lieferando/dialogs/RateAppUtils$1;->val$manufacturer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/yopeso/lieferando/dialogs/RateAppUtils$1;->val$model:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_________________________\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 112
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    :goto_0
    const-string v2, "plain/text"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    :try_start_0
    iget-object v2, p0, Lcom/yopeso/lieferando/dialogs/RateAppUtils$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :goto_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 126
    return-void

    .line 115
    :cond_0
    const-string v2, "android.intent.extra.TEXT"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_________________________\n"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/yopeso/lieferando/dialogs/RateAppUtils$1;->val$res:Landroid/content/res/Resources;

    sget v5, Lcom/yopeso/lieferando/R$string;->phone_manufacture:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/yopeso/lieferando/dialogs/RateAppUtils$1;->val$manufacturer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/yopeso/lieferando/dialogs/RateAppUtils$1;->val$model:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 116
    const-string v4, "_________________________\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 115
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 123
    iget-object v2, p0, Lcom/yopeso/lieferando/dialogs/RateAppUtils$1;->val$context:Landroid/content/Context;

    sget v3, Lcom/yopeso/lieferando/R$string;->feedback_error:I

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
