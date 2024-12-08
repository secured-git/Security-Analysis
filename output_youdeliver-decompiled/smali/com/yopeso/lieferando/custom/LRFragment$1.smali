.class Lcom/yopeso/lieferando/custom/LRFragment$1;
.super Ljava/lang/Object;
.source "LRFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/custom/LRFragment;->buildAlertMessageNoGps()Landroid/app/AlertDialog$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/custom/LRFragment;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/custom/LRFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/custom/LRFragment$1;->this$0:Lcom/yopeso/lieferando/custom/LRFragment;

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 226
    iget-object v0, p0, Lcom/yopeso/lieferando/custom/LRFragment$1;->this$0:Lcom/yopeso/lieferando/custom/LRFragment;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/custom/LRFragment;->startActivity(Landroid/content/Intent;)V

    .line 227
    return-void
.end method
