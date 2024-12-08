.class Lcom/yopeso/lieferando/dialogs/RateAppUtils$2;
.super Ljava/lang/Object;
.source "RateAppUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/dialogs/RateAppUtils;->showDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/dialogs/RateAppUtils$2;->val$context:Landroid/content/Context;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 130
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/yopeso/lieferando/dialogs/RateAppUtils$2;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/yopeso/lieferando/dialogs/RateAppUtils;->setIfCanShowRateAppDialog(ZLandroid/content/Context;)V

    .line 131
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 132
    return-void
.end method
