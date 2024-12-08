.class Landroid/support/v4/app/LRDialogFragment$1;
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
    iput-object p1, p0, Landroid/support/v4/app/LRDialogFragment$1;->this$0:Landroid/support/v4/app/LRDialogFragment;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 97
    iget-object v0, p0, Landroid/support/v4/app/LRDialogFragment$1;->this$0:Landroid/support/v4/app/LRDialogFragment;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/LRDialogFragment;->startActivity(Landroid/content/Intent;)V

    .line 98
    return-void
.end method
