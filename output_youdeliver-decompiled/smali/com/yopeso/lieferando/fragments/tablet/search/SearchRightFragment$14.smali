.class Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$14;
.super Ljava/lang/Object;
.source "SearchRightFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;->showDeleteDialog(IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment$14;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchRightFragment;

    .line 687
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 690
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 691
    return-void
.end method
