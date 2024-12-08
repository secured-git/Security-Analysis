.class Lcom/yopeso/lieferando/activity/BaseSearchActivity$5$1;
.super Ljava/lang/Object;
.source "BaseSearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/activity/BaseSearchActivity$5;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yopeso/lieferando/activity/BaseSearchActivity$5;

.field private final synthetic val$loginDialog:Landroid/app/AlertDialog;

.field private final synthetic val$passwordText:Landroid/widget/EditText;

.field private final synthetic val$userText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/activity/BaseSearchActivity$5;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/activity/BaseSearchActivity$5$1;->this$1:Lcom/yopeso/lieferando/activity/BaseSearchActivity$5;

    iput-object p2, p0, Lcom/yopeso/lieferando/activity/BaseSearchActivity$5$1;->val$userText:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/yopeso/lieferando/activity/BaseSearchActivity$5$1;->val$passwordText:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/yopeso/lieferando/activity/BaseSearchActivity$5$1;->val$loginDialog:Landroid/app/AlertDialog;

    .line 657
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 660
    iget-object v2, p0, Lcom/yopeso/lieferando/activity/BaseSearchActivity$5$1;->val$userText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 661
    .local v0, "email":Ljava/lang/String;
    iget-object v2, p0, Lcom/yopeso/lieferando/activity/BaseSearchActivity$5$1;->val$passwordText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 662
    .local v1, "password":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 663
    iget-object v2, p0, Lcom/yopeso/lieferando/activity/BaseSearchActivity$5$1;->val$userText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/yopeso/lieferando/activity/BaseSearchActivity$5$1;->this$1:Lcom/yopeso/lieferando/activity/BaseSearchActivity$5;

    invoke-static {v3}, Lcom/yopeso/lieferando/activity/BaseSearchActivity$5;->access$0(Lcom/yopeso/lieferando/activity/BaseSearchActivity$5;)Lcom/yopeso/lieferando/activity/BaseSearchActivity;

    move-result-object v3

    sget v4, Lcom/yopeso/lieferando/R$string;->mandatory_field_error_message:I

    invoke-virtual {v3, v4}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 670
    :goto_0
    return-void

    .line 664
    :cond_0
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 665
    iget-object v2, p0, Lcom/yopeso/lieferando/activity/BaseSearchActivity$5$1;->val$passwordText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/yopeso/lieferando/activity/BaseSearchActivity$5$1;->this$1:Lcom/yopeso/lieferando/activity/BaseSearchActivity$5;

    invoke-static {v3}, Lcom/yopeso/lieferando/activity/BaseSearchActivity$5;->access$0(Lcom/yopeso/lieferando/activity/BaseSearchActivity$5;)Lcom/yopeso/lieferando/activity/BaseSearchActivity;

    move-result-object v3

    sget v4, Lcom/yopeso/lieferando/R$string;->mandatory_field_error_message:I

    invoke-virtual {v3, v4}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 667
    :cond_1
    iget-object v2, p0, Lcom/yopeso/lieferando/activity/BaseSearchActivity$5$1;->this$1:Lcom/yopeso/lieferando/activity/BaseSearchActivity$5;

    invoke-static {v2}, Lcom/yopeso/lieferando/activity/BaseSearchActivity$5;->access$0(Lcom/yopeso/lieferando/activity/BaseSearchActivity$5;)Lcom/yopeso/lieferando/activity/BaseSearchActivity;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->doLogin(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    iget-object v2, p0, Lcom/yopeso/lieferando/activity/BaseSearchActivity$5$1;->val$loginDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0
.end method
