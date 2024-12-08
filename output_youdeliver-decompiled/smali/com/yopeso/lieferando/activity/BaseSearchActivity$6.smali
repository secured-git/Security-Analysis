.class Lcom/yopeso/lieferando/activity/BaseSearchActivity$6;
.super Ljava/lang/Object;
.source "BaseSearchActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/activity/BaseSearchActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/activity/BaseSearchActivity$6;->this$0:Lcom/yopeso/lieferando/activity/BaseSearchActivity;

    .line 843
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 845
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 846
    return-void
.end method
