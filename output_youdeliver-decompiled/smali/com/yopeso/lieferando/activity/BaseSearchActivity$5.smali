.class Lcom/yopeso/lieferando/activity/BaseSearchActivity$5;
.super Ljava/lang/Object;
.source "BaseSearchActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/activity/BaseSearchActivity;->showLoginDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/activity/BaseSearchActivity;

.field private final synthetic val$loginDialog:Landroid/app/AlertDialog;

.field private final synthetic val$passwordText:Landroid/widget/EditText;

.field private final synthetic val$userText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/activity/BaseSearchActivity;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/activity/BaseSearchActivity$5;->this$0:Lcom/yopeso/lieferando/activity/BaseSearchActivity;

    iput-object p2, p0, Lcom/yopeso/lieferando/activity/BaseSearchActivity$5;->val$userText:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/yopeso/lieferando/activity/BaseSearchActivity$5;->val$passwordText:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/yopeso/lieferando/activity/BaseSearchActivity$5;->val$loginDialog:Landroid/app/AlertDialog;

    .line 654
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/yopeso/lieferando/activity/BaseSearchActivity$5;)Lcom/yopeso/lieferando/activity/BaseSearchActivity;
    .locals 1

    .prologue
    .line 654
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/BaseSearchActivity$5;->this$0:Lcom/yopeso/lieferando/activity/BaseSearchActivity;

    return-object v0
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 657
    check-cast p1, Landroid/app/AlertDialog;

    .end local p1    # "dialog":Landroid/content/DialogInterface;
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/activity/BaseSearchActivity$5$1;

    iget-object v2, p0, Lcom/yopeso/lieferando/activity/BaseSearchActivity$5;->val$userText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/yopeso/lieferando/activity/BaseSearchActivity$5;->val$passwordText:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/yopeso/lieferando/activity/BaseSearchActivity$5;->val$loginDialog:Landroid/app/AlertDialog;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/yopeso/lieferando/activity/BaseSearchActivity$5$1;-><init>(Lcom/yopeso/lieferando/activity/BaseSearchActivity$5;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 672
    return-void
.end method
