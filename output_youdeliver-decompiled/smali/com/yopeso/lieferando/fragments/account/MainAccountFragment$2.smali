.class Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$2;
.super Ljava/lang/Object;
.source "MainAccountFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->onBackKeyPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$2;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 211
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$2;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->access$26(Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;Z)V

    .line 212
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment$2;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/fragments/account/MainAccountFragment;->doSaveChanges()V

    .line 213
    return-void
.end method
