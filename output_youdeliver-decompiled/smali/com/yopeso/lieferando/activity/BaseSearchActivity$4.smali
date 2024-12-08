.class Lcom/yopeso/lieferando/activity/BaseSearchActivity$4;
.super Ljava/lang/Object;
.source "BaseSearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/activity/BaseSearchActivity;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/activity/BaseSearchActivity$4;->this$0:Lcom/yopeso/lieferando/activity/BaseSearchActivity;

    iput-object p2, p0, Lcom/yopeso/lieferando/activity/BaseSearchActivity$4;->val$loginDialog:Landroid/app/AlertDialog;

    .line 647
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 650
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/BaseSearchActivity$4;->this$0:Lcom/yopeso/lieferando/activity/BaseSearchActivity;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/activity/BaseSearchActivity;->requireFBLogin()V

    .line 651
    iget-object v0, p0, Lcom/yopeso/lieferando/activity/BaseSearchActivity$4;->val$loginDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 652
    return-void
.end method
