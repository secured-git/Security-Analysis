.class Lcom/yopeso/lieferando/fragments/account/MainAddressFragment$4;
.super Ljava/lang/Object;
.source "MainAddressFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;->showDeleteDialog(IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment$4;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 269
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 270
    return-void
.end method
