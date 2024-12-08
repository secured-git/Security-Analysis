.class Lcom/yopeso/lieferando/custom/LRActivity$1;
.super Ljava/lang/Object;
.source "LRActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/custom/LRActivity;->showServerMaintenanceDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/custom/LRActivity;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/custom/LRActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/custom/LRActivity$1;->this$0:Lcom/yopeso/lieferando/custom/LRActivity;

    .line 445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 448
    iget-object v0, p0, Lcom/yopeso/lieferando/custom/LRActivity$1;->this$0:Lcom/yopeso/lieferando/custom/LRActivity;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/custom/LRActivity;->finish()V

    .line 449
    return-void
.end method
