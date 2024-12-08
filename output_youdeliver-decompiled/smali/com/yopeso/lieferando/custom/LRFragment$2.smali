.class Lcom/yopeso/lieferando/custom/LRFragment$2;
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
    iput-object p1, p0, Lcom/yopeso/lieferando/custom/LRFragment$2;->this$0:Lcom/yopeso/lieferando/custom/LRFragment;

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 230
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 231
    return-void
.end method
