.class Lcom/yopeso/lieferando/activity/BaseSearchActivity$8;
.super Ljava/lang/Object;
.source "BaseSearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/activity/BaseSearchActivity;->showForgotPasswordDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/activity/BaseSearchActivity;

.field private final synthetic val$costumerEmailAddress:Landroid/widget/EditText;

.field private final synthetic val$forgotPasswordDialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/activity/BaseSearchActivity;Landroid/widget/EditText;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/activity/BaseSearchActivity$8;->this$0:Lcom/yopeso/lieferando/activity/BaseSearchActivity;

    iput-object p2, p0, Lcom/yopeso/lieferando/activity/BaseSearchActivity$8;->val$costumerEmailAddress:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/yopeso/lieferando/activity/BaseSearchActivity$8;->val$forgotPasswordDialog:Landroid/app/AlertDialog;

    .line 855
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 859
    iget-object v1, p0, Lcom/yopeso/lieferando/activity/BaseSearchActivity$8;->val$costumerEmailAddress:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 860
    .local v0, "email":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 861
    iget-object v1, p0, Lcom/yopeso/lieferando/activity/BaseSearchActivity$8;->val$costumerEmailAddress:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/yopeso/lieferando/activity/BaseSearchActivity$8;->this$0:Lcom/yopeso/lieferando/activity/BaseSearchActivity;

    sget v3, Lcom/yopeso/lieferando/R$string;->mandatory_field_error_message:I

    invoke-virtual {v2, v3}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 870
    :goto_0
    return-void

    .line 862
    :cond_0
    sget-object v1, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_1

    .line 863
    iget-object v1, p0, Lcom/yopeso/lieferando/activity/BaseSearchActivity$8;->val$costumerEmailAddress:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/yopeso/lieferando/activity/BaseSearchActivity$8;->this$0:Lcom/yopeso/lieferando/activity/BaseSearchActivity;

    sget v3, Lcom/yopeso/lieferando/R$string;->invalid_mail_format_error_message:I

    invoke-virtual {v2, v3}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 865
    :cond_1
    iget-object v1, p0, Lcom/yopeso/lieferando/activity/BaseSearchActivity$8;->val$costumerEmailAddress:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 866
    iget-object v1, p0, Lcom/yopeso/lieferando/activity/BaseSearchActivity$8;->this$0:Lcom/yopeso/lieferando/activity/BaseSearchActivity;

    iget-object v2, p0, Lcom/yopeso/lieferando/activity/BaseSearchActivity$8;->val$costumerEmailAddress:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->performResetpassword(Ljava/lang/String;)V

    .line 867
    iget-object v1, p0, Lcom/yopeso/lieferando/activity/BaseSearchActivity$8;->val$forgotPasswordDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0
.end method
