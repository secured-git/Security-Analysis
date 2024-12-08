.class Landroid/support/v4/app/LRDialogFragment$2;
.super Ljava/lang/Object;
.source "LRDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/LRDialogFragment;->buildAlertMessageNoGps()Landroid/app/AlertDialog$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/app/LRDialogFragment;


# direct methods
.method constructor <init>(Landroid/support/v4/app/LRDialogFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Landroid/support/v4/app/LRDialogFragment$2;->this$0:Landroid/support/v4/app/LRDialogFragment;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 101
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 102
    return-void
.end method
